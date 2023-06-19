//
//  BibliothequeView_1.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct BibliothequeView_1: View {
    var body: some View {
            ZStack{
                BackgroundGeneral(color_claire: .mint.opacity(2), color_foncee: .purple.opacity(0.8))
                VStack{
//                    Text("Livres")
//                        .font(.system(size: 50, weight: .bold, design: .rounded))
//                        .foregroundColor(.purple.opacity(0.8))
//                        .frame(maxWidth: 350, maxHeight:60, alignment: .top)
//                        .shadow(radius: 2)
                    ScrollView{
                        ForEach (listLivres){ livre
                            in
                            NavigationLink {
                                BibliothequeView_2(livre: livre)
                            } label: {
                                BibliothequeCeluleLivre(livre: livre)
                            }
                        }
                    }
                    
                }
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Livres")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .foregroundColor(.purple.opacity(0.8))
                            .shadow(radius: 2)
            }
           
                }
            }
        
    }
}

struct BibliothequeView_1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BibliothequeView_1()
                //.navigationBarHidden(true)
        }
    }
}
