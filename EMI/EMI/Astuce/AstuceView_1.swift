//
//  AstuceView_1.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct AstuceView_1: View {
    var body: some View{
        
            ZStack {
                BackgroundGeneral(color_claire: .blue, color_foncee: .mint.opacity(0.7))
                VStack{
                   
               
                       // Spacer()
                        Image("Astuce3_Img")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding()
                        .shadow(radius: 4)

                       // Spacer()
                    
                        ScrollView{
                            

                    AstuceLigne()
                            NavigationLink (destination: AstuceView_2()){
                                AstuceLigne(text: "La main", image:"chevron.forward.circle.fill")
                            }
                            AstuceLigne(text: "Respiration zen", image: "chevron.forward.circle.fill")
                            AstuceLigne(text: "Dévélopper sa créativité", image: "chevron.forward.circle.fill")
                            AstuceLigne(text: "Trois anneaux:Outil de retour au calme", image:
                                            "chevron.forward.circle.fill")
                            AstuceLigne(text: "Alternative aux punitions", image: "chevron.forward.circle.fill")
                            AstuceLigne(text:"Jeux pour dévélopper l'emphaty",image: "chevron.forward.circle.fill")
                            AstuceLigne(text: "Respiration", image: "chevron.forward.circle.fill")
                            AstuceLigne(text: "Courbe de croissance", image: "chevron.forward.circle.fill")
                        }
                        .font(.system(size: 25))
                        .padding()
                        .frame(width: 350, height: 400)
                        .foregroundColor(.black.opacity(0.8))
                        .background(.thinMaterial)
                    .cornerRadius(12)
                    
                    Spacer()
                    
                }
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Astuces")
                                    .font(.system(size: 50,weight: .bold,design: .rounded))
                                    .foregroundColor(.blue.opacity(0.7))
                                    .shadow(radius: 2)
                                    .frame(maxWidth: .infinity)
                    }
                }

            }
        
                }
    
            }


struct AstuceView_1_Previews: PreviewProvider {
    static var previews: some View {
        AstuceView_1()
    }
}
