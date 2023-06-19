//
//  EducationView.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EducationView: View {
    let data = (1...100).map { "Item \($0)" }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient:Gradient (colors :[Color.mint.opacity(0.5) ,Color.purple.opacity(0.5), Color.indigo.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .ignoresSafeArea()
                
                VStack {
//                    Text("Apprendre ces émotions")
//                        .font(.system(size: 30, weight: .bold, design: .rounded))
//                        .foregroundColor(.indigo.opacity(0.8))
//                        .multilineTextAlignment(.center)
//                        .padding(.bottom, 30)
                    
                        LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(listEmojis) { item in
                                    NavigationLink (destination: EducationView_1()) {
                                    EducationCeluleEmoji(emoji: item)
                                }
                            }
                        //.padding(.horizontal)
                            Spacer(minLength: 100)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Apprendre ces émotions")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.purple.opacity(0.8))
                            .shadow(radius: 2)
            }
           
                }
            }
            
            
            
            
        }
    }
    
    struct EducationView_Previews: PreviewProvider {
        static var previews: some View {
            EducationView()
        }
    }
}
