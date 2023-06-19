//
//  EducationStructureEmojis.swift
//  EMI
//
//  Created by apprenant51 on 07/02/2022.
//

import Foundation

struct Emojis: Identifiable {
    var id = UUID()
    
    let imagemEmoji: String
}

var listEmojis : [Emojis] = [
    Emojis(imagemEmoji: "content"),
    Emojis(imagemEmoji: "peur"),
    Emojis(imagemEmoji: "colere"),
    Emojis(imagemEmoji: "triste"),
    Emojis(imagemEmoji: "degout"),
    Emojis(imagemEmoji: "surpris")
]
