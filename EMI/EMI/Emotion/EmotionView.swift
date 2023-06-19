//
//  EmotionView.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EmotionView: View {
    var body: some View {
        NavigationView {
        ZStack {
            BackgroundGeneral(color_claire: .pink, color_foncee: .white)
            VStack{
                Text("Comment tu te sens?")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .foregroundColor(.purple.opacity(0.8))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 2)
                    .frame(maxWidth: .infinity)
            
                ScrollView {
              
                    ForEach(Emotion.emotionList) { emotion in
                        NavigationLink(destination: EmotionView_1(emotion: emotion)) {
                            EmotionRow(emotion: emotion)
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
        }
    }
}

struct EmotionView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionView()
    }
}
