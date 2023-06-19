//
//  BibliothequeLivres.swift
//  EMI
//
//  Created by apprenant51 on 03/02/2022.
//

import SwiftUI

struct BibliothequeCeluleLivre: View {
    let livre : Livres
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 10)
                .stroke(livre.colorRow.opacity(0.4), lineWidth: 6)
                .background(.thinMaterial)
                .cornerRadius(12)
                .shadow(radius: 2)
                .blur(radius: 1)
                .overlay(Circle()
                            .fill(livre.colorRow.opacity(0.1))
                            .frame(width: 300, height: 200)
                            .offset(x: -150, y: 0))
            
            HStack(spacing: 16) {
                Image(livre.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading){
                    Text(livre.titre)
                        .lineSpacing(1)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text(livre.description)
                        .lineSpacing(3)
                        .font(.system(size: 20))
                }
                .foregroundStyle(.black.opacity(0.7))
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .clipped()
        .cornerRadius(12)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .frame(width: 400, height: 150)
    }
}

struct BibliothequeCeluleLivre_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeCeluleLivre(livre: Livres(titre: "Le Petit Prince", description: "Auteur: Antoine de Saint-ExupÃ©ry", image: "Bibliotheque1_ImgPrince", colorRow: .blue))
    }
}
