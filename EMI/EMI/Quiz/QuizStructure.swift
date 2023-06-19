//
//  QuizStructure.swift
//  EMI
//
//  Created by apprenant51 on 08/02/2022.
//

import Foundation
import SwiftUI

struct Quizz: Identifiable{
    var id = UUID()
    
    let image: String
    let reponses: [String]
}


let listeQuizz = [
    Quizz(image: "peur", reponses: ["bisou"]),
    Quizz(image: "content", reponses: ["jouer avec lui"])
]
