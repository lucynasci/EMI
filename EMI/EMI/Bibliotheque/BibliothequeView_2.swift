//
//  BibliothequeView_2.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct BibliothequeView_2: View {
    @State private var valueSlider: Double = 0
    var livre : Livres
    var body: some View {
        
        ZStack {
            BackgroundGeneral(color_claire: .mint.opacity(2), color_foncee: .purple.opacity(0.8))
            VStack {
//                    Text("Livre")
//                        .font(.system(size: 50, weight: .bold, design: .rounded))
//                        .foregroundColor(.purple.opacity(0.8))
//                        .shadow(radius: 2)
//                        .frame(maxWidth: .infinity)

                Spacer()
                Text(livre.titre)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.black.opacity(0.5))
                    .shadow(radius: 2)
                Spacer()
                VStack {
                    Image(systemName: "waveform")
                        .font(.system(size: 50))
                        .foregroundColor(.mint
                        )
                        .shadow(radius: 7)
                    
                    
                    Slider(value: $valueSlider, in: 0...50)
                        .padding()
                        .frame(width: 300, height: 100)
                    
                    HStack(spacing: 40) {
                        Image(systemName: "pause.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.purple
                            )
                            .shadow(radius: 7)
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.purple
                            )
                            .shadow(radius: 7)
                        Image(systemName: "stop.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.purple
                            )
                            .shadow(radius: 7)
                    }
                }
                .padding()
                .background(.thinMaterial)
                .cornerRadius(20)
                .shadow(radius: 3)
                
                Spacer()
                Image("Biblioteque2_ImgFilleMusic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 5)
                Spacer()
                    
            
        }
            .toolbar {
                ToolbarItem(placement: .principal){
                    Text("Livre")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.purple.opacity(0.8))
                        .shadow(radius: 2)
        }
       
            }
            }
        
            //.navigationBarHidden(true)
        }
    
    }


struct BibliothequeView_2_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView_2(livre:Livres(titre: "bla", description: "bla", image: "blu", colorRow: .blue))
    }
}
