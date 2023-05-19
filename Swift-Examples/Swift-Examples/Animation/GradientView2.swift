//
//  GradientView2.swift
//  Swift-Examples
//
//  Created by Tri Pham on 5/19/23.
//

import SwiftUI

struct GradientView2: View {
    let gradient = Gradient(colors: [Color.red, Color.white])
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.radialGradient(gradient, center: .center, startRadius: 0, endRadius: 120))
            .frame(width: 100, height: 100)
    }
}

struct GradientView2_Previews: PreviewProvider {
    static var previews: some View {
        GradientView2()
    }
}
