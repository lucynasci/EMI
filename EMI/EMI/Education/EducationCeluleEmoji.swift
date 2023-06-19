//
//  EducationCeluleEmoji.swift
//  EMI
//
//  Created by apprenant51 on 07/02/2022.
//

import SwiftUI

struct EducationCeluleEmoji: View {
    let emoji : Emojis
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white.opacity(0.3))
                .frame(width: 150, height: 150)
                .offset(x: 0, y: 0)
                .shadow(radius: 15)
            Image(emoji.imagemEmoji)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 160, height: 160)
        }
    }
}

struct EducationCeluleEmoji_Previews: PreviewProvider {
    static var previews: some View {
        EducationCeluleEmoji(emoji: Emojis(imagemEmoji: "content"))
    }
}
