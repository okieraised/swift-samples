//
//  GradientView1.swift
//  Swift-Examples
//
//  Created by Tri Pham on 5/19/23.
//

import SwiftUI

struct GradientView1: View {
    
    let gradient = Gradient(colors: [Color.red, Color.green])
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.linearGradient(gradient, startPoint: .top, endPoint: .bottom))
            .frame(width: 100, height: 100)
    }
}

struct GradientView1_Previews: PreviewProvider {
    static var previews: some View {
        GradientView1()
    }
}
