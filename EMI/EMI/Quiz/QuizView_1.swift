//
//  QuizView_1.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct QuizView_1: View {
    @State private var goodAnswer = Color.green
    @State private var wrongAnswer = Color.red
//    let wrongAnswer = [Bool: Image]()
    
    var body: some View {
        
            ZStack{
                LinearGradient(gradient:Gradient (colors :[Color.indigo.opacity(0.3) ,Color.white.opacity(0.5), Color.indigo.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .path(in: CGRect(x: 25, y: 140, width: 345, height: 580))
                        .foregroundColor(Color.white.opacity(0.5))
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                        .blur(radius: 1)
                    
                    VStack(alignment: .center) {
                Image("evaluation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 170)
                    .frame(maxWidth: 350, maxHeight:450, alignment: .top)
                    .shadow(radius: 4)
               
            
                        
                    Text("""
                         Choisir les bonnes réponses
                         """)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    
                
                QuizView1buttonPair
                    Spacer(minLength: 120)
                        
                    }
                }
                
                VStack(alignment: .trailing){
                    HStack {
                        Spacer()
              Button{
                  SoundManager.instance.playSound(sound: .quizView1)
                  }
              label:{
                  Image(systemName: "waveform.circle.fill")
                      .font(.system(size: 50))
                      .foregroundColor(.indigo)
                      .shadow(radius: 4)
                      .padding(.trailing, 12.0)
              }
                    }
                    Spacer()
                }
        
            
       
//            goodAnswer[true, default: Image("calin")]
//            wrongAnswer[true, default: Image("sauter")]
            
        }
        
    }
    
}

struct QuizView_1_Previews: PreviewProvider {
    static var previews: some View {
        QuizView_1()
    }
}
private var QuizView1buttonPair: some View {
   
    VStack {
    HStack {
        
    Button{
SoundManager.instance.playSound(sound: .bravo)
        
    }label:{
                    Image("hug").resizable() .aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).scaledToFit().frame(width: 130.0, height: 130).clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
            .padding([.top, .leading], 48.0)
                    
                }
    Spacer()
    
    Button{
        SoundManager.instance.playSound(sound: .bloop)
        }label:{
                    Image("rire").resizable() .aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).scaledToFit().frame(width: 130.0, height: 130).clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
                .padding([.top, .trailing], 41.0)
            
        }
        
    }

    HStack {
        
    Button{
SoundManager.instance.playSound(sound: .bloop)
        
    }label:{
                    Image("boxing").resizable() .aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).scaledToFit().frame(width: 130.0, height: 130).clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
            .padding([.top, .leading], 48.0)
                    
                }
    Spacer()
    
    Button{
        SoundManager.instance.playSound(sound: .soundParty)
        }label:{
                    Image("parlant").resizable() .aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).scaledToFit().frame(width: 130.0, height: 130).clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
                .padding([.top, .trailing], 41.0)
            
        }
        
    }
    }
}

