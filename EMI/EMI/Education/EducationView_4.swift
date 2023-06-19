
//
//  EducationView_4.swift
//  EducationView_4
//
//  Created by apprenant65 on 04/02/2022.
//
import SwiftUI

struct EducationView_4: View {
    @Environment(\.dismiss)private var dismiss
    
    var body: some View {
        ZStack{
            LinearGradient(gradient:Gradient (colors :[Color.white.opacity(0.3) ,Color.pink.opacity(0.5), Color.red.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            EducationView_4_TextView()
            Image("jeu1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .frame(maxWidth: 350, maxHeight:750, alignment: .top)
                .shadow(radius: 4)
            VStack {
                HStack(alignment: .top) {
                
            Button{
                //mettre la action du button "Retour"
            }
        label:{
            Image(systemName: "arrowshape.turn.up.left.circle.fill")
                .font(.system(size: 50))
                .frame(width: 100, height: 100)
                
                .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                .shadow(radius: 4)
        }
            
              Spacer()
            Button{
                SoundManager.instance.playSound(sound: .education4)
            }
        label:{
            Image(systemName: "waveform.circle.fill")
                .font(.system(size: 50))
                .frame(width: 100, height: 100)
                .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                .shadow(radius: 4)
        }
           
            }
               
                Spacer()
                HStack{
                    
                    Spacer()
    
                Button{
                //mettre la action du button "Cancel"
            }
        label:{
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: 50))
                .frame(width: 100, height: 100)
                .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                .shadow(radius: 4)
                
        }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct EducationView_4_Previews: PreviewProvider {
    static var previews: some View {
        EducationView_4()
    }
}

private var backButton: some View {
    Button{
        //mettre la action du button "Retour"
    }
label:{
    Image(systemName: "arrowshape.turn.up.left.circle.fill")
        .font(.system(size: 50))
        .frame(width: 100, height: 100)
        
        .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
        .shadow(radius: 4)
}

}


struct EducationView_4_TextView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .path(in: CGRect(x: 20, y: 220, width: 350, height: 500))
                .foregroundColor(Color.white.opacity(0.6))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
            
            ScrollView{
                VStack (alignment: .leading, spacing: 20){
                    Text("Jeu 1")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    
                    Text("Fais-moi peur".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                        
                    Text("""
Fais peur à tes parents avec des araignées, des bruits étranges, fais le grognement de l'ours...

Tes parents feront mine d’être terrorisés, tu seras super content et aussitôt tu seras plus proche d’eux.
""")
                        .font(.system(size: 25))
        
                }
            }
            .padding()
            .frame(width: 340, height: 550)
            .frame(maxWidth: 350, maxHeight:350, alignment: .top)
            .foregroundColor(.black.opacity(0.8))
        }
    }
}





