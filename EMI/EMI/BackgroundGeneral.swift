//
//  Education_BackgroundColere.swift
//  EMI
//
//  Created by apprenant51 on 07/02/2022.
//

import SwiftUI

struct BackgroundGeneral: View {
    var color_claire : Color
    var color_foncee : Color
    
    var body: some View {
        ZStack{
            LinearGradient(gradient:Gradient (colors :[Color.white,Color.white]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient:Gradient (colors :[color_claire.opacity(0.3),color_foncee.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundGeneral_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGeneral(color_claire: .white, color_foncee: .red)
    }
}
