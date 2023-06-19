//
//  EmotionStruct.swift
//  EMI
//
//  Created by apprenant50 on 03/02/2022.
//

import Foundation
import SwiftUI

struct Emotion: Identifiable{
    var id = UUID()
    
    let emotion: String
    var emotionImage: String
    var emotionColor: Color
    
    static var emotionList = [
        Emotion(emotion: "Joie", emotionImage: "content", emotionColor: .yellow),
        Emotion(emotion: "Peur", emotionImage: "peur", emotionColor: .purple),
        Emotion(emotion: "Colére", emotionImage: "colere", emotionColor: .red),
        Emotion(emotion: "Tristesse", emotionImage: "triste", emotionColor: .blue),
        Emotion(emotion: "Dégout", emotionImage: "degout", emotionColor: .green),
        Emotion(emotion: "Surpris", emotionImage: "surpris", emotionColor: .cyan)
    ]
    
}
