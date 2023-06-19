//
//  EducationStruct.swift
//  EducationView_3
//
//  Created by apprenant65 on 05/02/2022.
//


import SwiftUI

struct Education: Identifiable {
    var id = UUID()
    var educName: String
    var educImage: String
    var sound = SoundManager()
    var recording: SoundManager.SoundOption
}

    struct EducationSimple: Identifiable {
        var id = UUID()
        var educName: String
        var educImage: String
        var sound = SoundManager()
        var recording: SoundManager.SoundOption
}
    var educationList: [Education] = [
        
        Education(educName: "JEU 1", educImage: "jeu1", recording: .education3Jeu1),
        Education(educName: "JEU 2", educImage: "jeu2", recording: .education3Jeu2),
        Education(educName: "JEU 3", educImage: "jeu3", recording: .education1),
        Education(educName: "JEU 4", educImage: "jeu4", recording: .education1),
        Education(educName: "JEU 5", educImage: "jeu5", recording: .education1),
        Education(educName: "JEU 6", educImage: "jeu6", recording: .education1),
        Education(educName: "JEU 7", educImage: "jeu7", recording: .education1)
        
    ]
var educationListSimple: [EducationSimple] = [
    
    EducationSimple(educName: "SAUTER", educImage: "sauter", recording: .vache),
    EducationSimple(educName: "CALIN", educImage: "calin", recording: .education3Calin),
    EducationSimple(educName: "DOUDOU", educImage: "doudou", recording: .education3Doudou),
    EducationSimple(educName: "PARLER", educImage: "dire", recording: .vache),
    
    EducationSimple(educName: "CHANTER", educImage: "chanter", recording: .vache),
    EducationSimple(educName: "RESPIRER", educImage: "respire", recording: .vache)
    
]

