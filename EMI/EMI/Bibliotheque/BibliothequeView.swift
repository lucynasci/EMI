
//
//  BibliothequeView.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct BibliothequeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                BackgroundGeneral(color_claire: .mint.opacity(2), color_foncee: .purple.opacity(0.8))
                
                
                VStack(spacing: 30){
                    NavigationLink (destination: BibliothequeView_1()){
                        Image("ImgBook_Bibliotheque0")
                            .resizable()
                            .scaledToFit()
                    }
                    Image("ImgVideo_Bibliotheque0")
                        .resizable()
                        .scaledToFit()
                    Image("ImgMusique_Bibliotheque0")
                        .resizable()
                        .scaledToFit()
                    Image("ImgRelax_Bibliotheque0")
                        .resizable()
                        .scaledToFit()
                    Image("ImgJeux_Bibliotheque0")
                        .resizable()
                        .scaledToFit()
                }
                
                .frame(maxWidth: 200, maxHeight:600, alignment: .bottom)
                .shadow(radius: 7)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Bibliothèque")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .foregroundColor(.purple.opacity(0.8))
                            .shadow(radius: 2)
            }
           
                }
            }
        }
    }
}
    struct BibliothequeView_Previews: PreviewProvider {
        static var previews: some View {
            BibliothequeView()
        }
    }
