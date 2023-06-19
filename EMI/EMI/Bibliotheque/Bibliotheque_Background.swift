//
//  Bibliotheque_Background.swift
//  EMI
//
//  Created by apprenant51 on 03/02/2022.
//

import SwiftUI

struct Bibliotheque_Background: View {
    var color_claire : Color
    var color_foncee : Color
    
    var body: some View {
        ZStack{
            LinearGradient(gradient:Gradient (colors :[Color.white,Color.white]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient:Gradient (colors :[color_foncee.opacity(0.6) ,color_claire.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Bibliotheque_Background_Previews: PreviewProvider {
    static var previews: some View {
        Bibliotheque_Background(color_claire: .purple, color_foncee: .mint)
    }
}
