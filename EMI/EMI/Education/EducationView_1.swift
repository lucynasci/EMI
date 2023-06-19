//
//  EducationView_1.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EducationView_1: View {
    var body: some View {
        ZStack{
            BackgroundGeneral(color_claire: .pink, color_foncee: .purple)
            ButtonTop()
            VStack {
                Spacer(minLength: 115)
                ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .path(in: CGRect(x: 30, y: 9, width: 345, height: 100))
                    .foregroundColor(Color.white.opacity(0.6))
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 20)
                    .shadow(radius: 4)
                    
            Text("LA COLÈRE")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    .shadow(radius: 2)
                    
                }
                
            HStack(spacing:20) {
            Image("colere1")
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 160)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 4)
            
            Image("colere2")
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 4)
        }
                Spacer(minLength: 10)
                
                HStack(spacing:20) {
                Image("colere3")
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 4)
                
                Image("colere4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 4)
                }
                
            HStack(spacing:20) {
                Image("colere5")
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 4)
                
                Image("colere6")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 4)
            }
                Spacer(minLength: 25)
        }
            Image("enColere")
                .resizable()
                .scaledToFit()
                .frame(width: 165, height: 150)
                .frame(minWidth: 350, maxHeight: 900, alignment: .top)
                .shadow(radius: 4)
        }

    }
}
struct EducationView_1_Previews: PreviewProvider {
    static var previews: some View {
        EducationView_1()
    }
}
