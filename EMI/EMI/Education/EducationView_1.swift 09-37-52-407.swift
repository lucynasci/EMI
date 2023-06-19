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
            LinearGradient(gradient:Gradient (colors :[Color.white.opacity(0.3) ,Color.pink.opacity(0.5), Color.red.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            VStack(spacing: 0) {
                
                    Image("enColere")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 220, height: 150)
                            .shadow(radius: 4)
                        .padding(.top, 50)
                    
                
                
                
                EducationViewColerePhotos()
            }
            
            VStack(alignment: .leading) {
                
                HStack(alignment: .top) {
                    Spacer()
            
             
            }
                Spacer()
            }
            
            
            
    
        }
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button{
            SoundManager.instance.playSound(sound: .education1)
        }
    label:{
        Image(systemName: "waveform.circle.fill")
            .font(.system(size: 30))
            //.frame(width: 100, height: 100)
            .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
            .shadow(radius: 4)
    }
            
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct EducationView_1_Previews: PreviewProvider {
    static var previews: some View {
        EducationView_1()
    }
}

struct EducationViewColerePhotos: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color.white.opacity(0.6))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
                .padding(.horizontal, 8)
            
            VStack{
                    
                    
                HStack {
                    Text("La Colère")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    
                    NavigationLink (destination: EducationView_2()){
                        Image(systemName: "arrow.right.circle.fill")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    }
                }
                        
                
                ScrollView{
                    HStack(spacing:20)  {
                        
                        Image("colere1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                        
                        Image("colere2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 166)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                    }
                    
                    Spacer(minLength: 1)
                    HStack(spacing:20) {
                        Image("colere3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.vertical, 15.0)
                            .shadow(radius: 4)
                        
                        Image("colere4")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.vertical, 15.0)
                            .shadow(radius: 4)
                    }
                    
                    Spacer(minLength: 1)
                    HStack(spacing:20) {
                        Image("colere5")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                        
                        Image("colere6")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                    }
                    
                    Spacer(minLength: 1)
                    HStack(spacing:20) {
                        Image("colere7")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.vertical, 15.0)
                            .shadow(radius: 4)
                        
                        Image("colere8")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.vertical, 15.0)
                            .shadow(radius: 4)
                    }
                    Spacer(minLength: 1)
                    HStack(spacing:20) {
                        Image("colere9")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 165)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                        
                        Image("colere10")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165, height: 166)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                    }
                    
                }
            }
        }
        
        
    }
}



