//
//  QuizView.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct QuizView: View {
    var body: some View {

        NavigationView {
            ZStack {
                LinearGradient(gradient:Gradient (colors :[Color.indigo.opacity(0.3) ,Color.white.opacity(0.5), Color.indigo.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .ignoresSafeArea()
                VStack{
                    ScrollView{
                        ForEach(Quiz.quizList) { user in
                            NavigationLink {
                                QuizView_1()
                            } label: {
                                QuizRow(quiz: user)
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("""
                             Si quelqu'un est...
                             """)
                            .font(.system(size: 35,weight: .bold,design: .rounded))
                            .fontWeight(.black)
                            .foregroundColor(.indigo.opacity(0.7))
                            .multilineTextAlignment(.center)
                            .shadow(radius: 2)
                            .frame(maxWidth: .infinity)
                    }
                }
            }

        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
