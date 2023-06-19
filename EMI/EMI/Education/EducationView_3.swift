//
//  EducationView_3.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EducationView_3: View {
    var body: some View {
        ZStack {
            
            
            LinearGradient(gradient:Gradient (colors :[Color.white.opacity(0.3) ,Color.pink.opacity(0.5), Color.red.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                
                
                Spacer(minLength: 120)
                ZStack (alignment: .top) {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 370.0, height: 100.0)
                    .foregroundColor(Color.white.opacity(0.6))
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 20)
                    .shadow(radius: 4)
                   
            Text("Que tu peux faire")
                        .frame(width: 350, height: 30, alignment: .center)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    .shadow(radius: 2)
                    .padding([.top, .leading, .trailing], 35.0)
                }
                Spacer(minLength: 5)
                
                ScrollView {
                    ForEach(educationList) {
                                  kebab in EducationRow(education: kebab)
                               }
                    ForEach(educationListSimple) {
                                  banane in EducationRowSimple(educationSimple: banane)
                    }
                }
        }
            Image("thinking")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 145)
                .frame(minWidth: 50, maxHeight: 900, alignment: .top)
                .shadow(radius: 7)
            
            
            VStack(alignment: .trailing){
                HStack {
                    Spacer()
          Button{
              SoundManager.instance.playSound(sound: .education3)
              }
          label:{
              Image(systemName: "waveform.circle.fill")
                  .font(.system(size: 50))
                  .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                  .shadow(radius: 4)
                  .padding(.trailing, 39.0)
          }
                }
                Spacer()
            }
           
//                Button{
//        //            action
//
//                }label:{
//                                Image(systemName: "arrowshape.turn.up.left.circle.fill").font(.system(size: 50))
//                        .frame(width: 130, height: 40)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
//                        .shadow(radius: 4)
//                }
            }
}
}

struct EducationView_3_Previews: PreviewProvider {
static var previews: some View {
    EducationView_3()
}
}
