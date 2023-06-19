//
//  QuizList.swift
//  EMI
//
//  Created by apprenant41 on 04/02/2022.

import SwiftUI

struct Quiz: Identifiable{
    var id = UUID()

    let emotion: String
    var emotionImage: String

    static var quizList = [
        Quiz(emotion: "Triste", emotionImage: "triste-1"),
        Quiz(emotion: "Heureux", emotionImage: "content_ensemble"),
        Quiz(emotion: "Effrayé", emotionImage: "peur-1"),
        Quiz(emotion: "Degouté", emotionImage: "degoute"),
        Quiz(emotion: "En colère", emotionImage: "colereFille")

    ]

}

