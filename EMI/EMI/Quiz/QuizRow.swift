//
//  QuizRow.swift
//  EMI
//
//  Created by apprenant41 on 04/02/2022.
//

import SwiftUI

struct QuizRow: View {
    let quiz: Quiz
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .fill(.cyan.opacity(0.3))
                    .background(.thinMaterial)
                    .cornerRadius(12)
                    .shadow(radius: 4)
                    .blur(radius: 1)
                    .frame(width: 350, height: 120)

                HStack (spacing: 10){
                        Image(quiz.emotionImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .shadow(radius: 7)
                        Text(quiz.emotion)
                            .font(.system(size: 43, weight: .bold, design: .rounded))
                            .foregroundColor(.black.opacity(0.6))
                            .shadow(radius: 2)
                    }
                   .frame(maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(12)
                    .frame(width: 330, height: 100)
                }

    }
}

struct QuizRow_Previews: PreviewProvider {
    static var previews: some View {
        QuizRow(quiz: Quiz.quizList[0])
    }
}
