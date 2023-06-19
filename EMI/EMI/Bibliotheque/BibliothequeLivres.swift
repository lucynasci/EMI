//
//  BibliothequeLivres.swift
//  EMI
//
//  Created by apprenant51 on 03/02/2022.
//

import SwiftUI

struct BibliothequeLivres: View {
    var nomLivre : String
    var descriptionLivre : String
    var colorRow : Color
    var imageLivre : String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(colorRow)
            HStack(spacing: 16) {
                Image(imageLivre)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading){
                    Text(nomLivre)
                    Text(descriptionLivre)
                }
            }
        }
        .padding()
        .frame(height: 150)
    }
}

struct BibliothequeLivres_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeLivres(nomLivre: "Max", descriptionLivre: "Min", colorRow: .purple, imageLivre: "pantone_3")
    }
}
/*
 .foregroundColor(Color.red)
 .frame(width: 80.0, height:50.0)
 .background(background)
 .cornerRadius(12)
 */
