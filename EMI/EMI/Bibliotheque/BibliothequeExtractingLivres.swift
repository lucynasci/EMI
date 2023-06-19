//
//  SwiftUIView.swift
//  EMI
//
//  Created by apprenant51 on 03/02/2022.
//

import SwiftUI

struct Livres: Identifiable {
    var id = UUID()
    
    let titre: String
    let description: String
    let image: String
    var colorRow: Color
}

var listLivres : [Livres] = [
    Livres(titre: "Le Petit Prince", description: "Auteur: Antoine de Saint-Exupery", image: "Bibliotheque1_ImgPrince", colorRow: .blue),
    Livres(titre: "Alice au pays des merveilles", description: "Auteur: Lewis Carroll", image: "Bibliotheque1_ImgAlice", colorRow:.cyan),
    Livres(titre: "Le petit chaperon rouge", description: "Auteurs:Jacob et Wilhelm Grimm", image: "Biblioteque1_ImgChaperonRouge", colorRow: .pink),
    Livres(titre: "Le vilain petit canard", description: "Auteur: Hans Christian Andersen", image: "Biblioteque1_ImgPetitCanard", colorRow: .indigo),
    Livres(titre: "Les Aventures de Pinocchio", description: "Auteur: Carlo Collodi", image: "Biblioteque1_ImgPinocchio", colorRow: .orange)
]
