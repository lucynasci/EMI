//
//  EducationView_2.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EducationView_2: View {
    @State private var opacity = 0.0

    var body: some View {
        ZStack{
            BackgroundGeneral(color_claire: .white, color_foncee: .red)
            VStack{
                
                Image("Education2_ImgColere")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .frame(maxWidth: 150, maxHeight:250, alignment: .top)
                    .shadow(radius: 4)
                
                Education_TextView()
                
               
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button{
                            SoundManager.instance.playSound(sound: .EducationView_2)
                        }
                    label:{
                        Image(systemName: "waveform.circle.fill")
                            .font(.system(size: 30))
                        //.frame(width: 100, height: 100)
                            .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                            .shadow(radius: 4)
                    }
                    .edgesIgnoringSafeArea(.all)
                    }
            }
                
            }
        }
    }
}

struct EducationView_2_Previews: PreviewProvider {
    static var previews: some View {
        EducationView_2()
    }
}

struct Education_TextView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .path(in: CGRect(x: 25, y: -50, width: 350, height: 350))
                .foregroundColor(Color.white.opacity(0.6))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
            ScrollView{
                VStack (alignment: .leading, spacing: 16){
                    Text("Colère")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    Text("comment tu te sens".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    Text("""
Tu te sens chaud, ton cœur bat très vite, t'as chaud et tu transpire, ton visage est rouge, t'as envie de crier, de frapper ou de pleurer et peut-être que tu ne pourras même pas parler.
""")
                        .font(.system(size: 25))
                    Text("Que faire maintenant ?".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    Text("""
Il faut que tu respire profondément et dire aux adultes ce qui t'est arrivé.
""")
                        .font(.system(size: 25))
                    Text("Qu'est-ce qui se passe ?".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    Text("""
Pourquoi es-tu en colère?
Est-ce que quelqu'un t'a fait du mal?
Est-ce que quelqu'un ne t'a pas écouté ?
Ou tu as mal ou tu a faim ?
""")
                        .font(.system(size: 25))
                    Text("Parle-moi ?".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    Text("""
Dis toujours pourquoi... et les autres peuvent te aider !
Pour te calmer tu pouvais aussi utiliser les astuces et petits jeux que tu peux essayer dés maintenant….
""")
                        .font(.system(size: 25))
                }
            }
            .padding()
            .frame(width: 350, height: 300)
            .frame(maxWidth: 350, maxHeight:200, alignment: .bottomTrailing)
            .foregroundColor(.black.opacity(0.8))
            
                 Button{
                     //mettre la action du button "Avance"
                 }
             label:{
                 NavigationLink(destination: EducationView_3()) {
                     Image(systemName: "arrowshape.turn.up.right.circle.fill")
                     
                     
                         .font(.system(size: 50))
                        // .frame(width: 100, height: 100)
                         .foregroundColor((Color(red: 0.917, green: 0.355, blue: 0.464)))
                         .shadow(radius: 4)
                         .padding()
                         
                 }
                 
             }
             
             //.padding(.bottom, 100.0)
             .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .bottomTrailing)
             .padding(.bottom, 20.0)
                 
        }
    }
}

