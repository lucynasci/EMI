//
//  EmotionRow.swift
//  EMI
//
//  Created by apprenant50 on 03/02/2022.
//

import SwiftUI

struct EmotionRow: View {
    let emotion: Emotion
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(emotion.emotionColor.opacity(0.3))
                .background(.thinMaterial)
                .cornerRadius(12)
                .shadow(radius: 4)
                .blur(radius: 1)
                .overlay(Circle()
                            .fill(emotion.emotionColor.opacity(0.3))
                            .frame(width: 300, height: 200)
                            .offset(x: -140, y: 0))
                .clipped()
                .cornerRadius(12)
            
            HStack(spacing: 10) {
                ZStack{
                    Image(emotion.emotionImage)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .shadow(radius: 2)
                        .frame(width: 130, height: 130, alignment: .leading)
                }
                Text(emotion.emotion)
                    .font(.system(size: 43, weight: .bold, design: .rounded))
                    .foregroundColor(emotion.emotionColor.opacity(0.6))
                    .shadow(radius: 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .cornerRadius(12)
            .frame(width: 350, height: 100)
        }
        .clipped()
        .cornerRadius(12)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .frame(width: 350, height: 130)
    }
}

struct EmotionRow_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRow(emotion: Emotion.emotionList[0])
    }
}
