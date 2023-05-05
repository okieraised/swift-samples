import SwiftUI

struct CircularProgressView: View {
    @State private var drawingStroke = false
     
        let strawberry = Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))
        let lime = Color(#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1))
        let ice = Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))
     
        let animation = Animation
            .easeOut(duration: 3)
            .repeatForever(autoreverses: false)
            .delay(0.5)
     
        var body: some View {
            ZStack {
                Color.black
                ring(for: strawberry)
                    .frame(width: 164)
                ring(for: lime)
                    .frame(width: 128)
                ring(for: ice)
                    .frame(width: 92)
            }
            .animation(animation, value: drawingStroke)
            .onAppear {
                drawingStroke.toggle()
            }
        }
     
        func ring(for color: Color) -> some View {
            // Background ring
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 16))
                .foregroundStyle(.tertiary)
                .overlay {
                    // Foreground ring
                    Circle()
                        .trim(from: 0, to: drawingStroke ? 1 : 0)
                        .stroke(color, style: StrokeStyle(lineWidth: 16, lineCap: .round))
                }
                .rotationEffect(.degrees(-90))
        }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
