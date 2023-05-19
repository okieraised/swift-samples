//
//  GradientView3.swift
//  Swift-Examples
//
//  Created by Tri Pham on 5/19/23.
//

import SwiftUI

struct GradientView3: View {
    
    let gradient = Gradient(colors: [Color.red, Color.white])
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.conicGradient(gradient, center: .center, angle: .degrees(180)))
            .frame(width: 100, height: 100)
    }
}

struct GradientView3_Previews: PreviewProvider {
    static var previews: some View {
        GradientView3()
    }
}
