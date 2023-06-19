//
//  Education_Background.swift
//  EMI
//
//  Created by apprenant50 on 03/02/2022.
//

import SwiftUI

struct Education_Background: View {
    var color_claire : Color
    var color_foncee : Color
    
    var body: some View {
        ZStack{
            LinearGradient(gradient:Gradient (colors :[Color.white,Color.white]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient:Gradient (colors :[Color.white.opacity(0.6) ,color_claire.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: 150, y: 30)
                    .foregroundColor(color_foncee.opacity(0.4))
                    .blur(radius: 5)
                Circle()
                    .frame(width: 300, height: 300)
                    .offset(x: -100, y: -125)
                    .foregroundColor(color_claire.opacity(0.3))
                    .blur(radius: 5)
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(x: 170, y: -230)
                    .foregroundColor(color_foncee.opacity(0.2))
                    .blur(radius: 5)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct Education_Background_Previews: PreviewProvider {
    static var previews: some View {
        Education_Background(color_claire: .pink, color_foncee: .red)
    }
}
