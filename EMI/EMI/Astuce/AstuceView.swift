//
//  AstuceView.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct AstuceView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                BackgroundGeneral(color_claire: .blue, color_foncee: .mint.opacity(0.7))
            VStack{
                   
                //Spacer()
                    Image("Astuces0_Img")
                            .resizable()
                            .frame(width: 200, height: 200)
                        .shadow(radius: 4)
                Spacer()
            VStack{
                HStack{
                    VStack(spacing:15){
                        VStack{
                        Button{
                            //                    mettre l'action du bouton "retout
                        }
                        
                    label:{
                        Image(systemName: "video.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue.opacity(0.7))
                            .shadow(radius: 4)
                    }
                        Text("Spécialistes")
                                .font(.system(size: 20))
                        }
                        .padding()
                        .frame(width: 160, height: 150)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .shadow(radius: 3)
                        VStack{
                        Button{
                            //                    mettre l'action du bouton "retout
                        }
                        
                    label:{
                        Image(systemName: "ellipsis.bubble.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue.opacity(0.7))
                            .shadow(radius: 4)
                    }
                     Text("Conseils")
                                .font(.system(size: 20))
                        }
                        .padding()
                        .frame(width: 160, height: 150)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    }
                    VStack(spacing: 15){
                        VStack{
                        Button{
                            //                    mettre l'action du bouton "retout
                        }
                        
                    label:{
                        NavigationLink (destination: AstuceView_1()){
                        Image(systemName: "list.bullet.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue.opacity(0.7))
                            .shadow(radius: 4)
                        }
                    }
                        Text("Astuces")
                                .font(.system(size: 20))
                        }
                        .padding()
                        .frame(width: 160, height: 150)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .shadow(radius: 3)
                        VStack{
                        Button{
                            //                    mettre l'action du bouton "retout
                        }
                        
                    label:{
                        Image(systemName: "person.fill.questionmark")
                            .font(.system(size: 80))
                            .foregroundColor(.blue.opacity(0.7))
                            .shadow(radius: 4)
                    }
                        Text("Testes")
                                .font(.system(size: 20))
                        }
                        .padding()
                        .frame(width: 160, height: 150)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .shadow(radius: 3)
                    }
                }
                
            }
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal){
                    Text("Conseils")
                            .font(.system(size: 50,weight: .bold,design: .rounded))
                            .foregroundColor(.blue.opacity(0.7))
                            .shadow(radius: 2)
                            .frame(maxWidth: .infinity)
                }
            }
            
            }
        }
    
}

}


struct AstuceView_Previews: PreviewProvider {
    static var previews: some View {
        AstuceView()
    }
}


