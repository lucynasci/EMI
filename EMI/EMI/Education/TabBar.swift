//
//  TabBar.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            EducationView()
                .tabItem {
                    Image(systemName: "graduationcap.circle.fill")
                    Text("Education")
                }
            EmotionView()
                .tabItem {
                    Image(systemName: "face.smiling")
                    Text("Emotion")
                }
            BibliothequeView()
                .tabItem {
                    Image(systemName: "book.circle.fill")
                    Text("Bibliotheque")
                }
            QuizView()
                .tabItem {
                    Image(systemName: "text.bubble.fill")
                    Text("Quiz")
                }
            AstuceView()
                .tabItem {
                    Image(systemName: "questionmark.folder.fill")
                    Text("Astuce")
                }
            //Color(.red) 
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
