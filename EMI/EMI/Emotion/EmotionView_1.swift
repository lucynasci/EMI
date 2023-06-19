//
//  EmotionView_1.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EmotionView_1: View {
    var emotion: Emotion
    @State private var taux: Double = 0
    var body: some View {
        ZStack{
            BackgroundGeneral(color_claire: .white.opacity(0), color_foncee: .yellow.opacity(1.0))
            VStack {
                Image("mesure_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .shadow(radius: 3)
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 350, height: 100)
                        .foregroundColor(.orange.opacity(0.3))
                        .shadow(radius: 2)
                    HStack {
                        Text("Choisi ton niveau ")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                        NavigationLink (destination: EmotionView_2()) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.system(size: 35, weight: .bold, design: .rounded))
                            .foregroundColor(.brown)
                        }
                    }
                }
                Spacer()
                HStack {
                    Image(systemName: "heart")
                        .resizable(resizingMode: .tile)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.red)
                        .frame(width: 40.0, height: 40.0)
                    Slider(value: $taux, in: 0...10)
                        .frame(width: 200.0, height: 20.0)
                    Image(systemName: "heart")
                        .resizable(resizingMode: .tile)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.red)
                        .frame(width: 70.0, height: 70.0)
                    
                }
                Text("\(taux, specifier: "%.0f")")
                Spacer()
            }
            
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button{
                        SoundManager.instance.playSound(sound: .niveau)
                    }
                label:{
                    Image(systemName: "waveform.circle.fill")
                        .font(.system(size: 30))
                        //.frame(width: 100, height: 100)
                        //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .foregroundColor(.orange.opacity(0.5))
                        .shadow(radius: 4)
                }
                
                }
                
            }
            
        }
    }
    
    
}
struct EmotionView_1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EmotionView_1(emotion: Emotion.emotionList[0])
        }
    }
}


//import SwiftUI
//
//struct EmotionView_1: View {
//    var emotion: Emotion
//    @State private var taux: Double = 0
//    var body: some View {
//        ZStack{
//            VStack {
//                Text(emotion.emotion)
//                    .font(.system(size: 50, weight: .bold, design: .rounded))
//                    .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
//                Image("mesure")
//                ZStack {
//                    RoundedRectangle(cornerRadius: 50)
//                        .frame(width: 300, height: 200)
//                        .foregroundColor(Color(red: 0.69, green: 0.868, blue: 0.98))
//                    Text("Choisi ton niveau")
//                        .font(.title)
//                        .fontWeight(.black)
//                }
//                Spacer()
//                Spacer()
//                HStack {
//                    Image(systemName: "heart")
//                        .resizable(resizingMode: .tile)
//                        .aspectRatio(contentMode: .fill)
//                        .foregroundColor(Color.red)
//                        .frame(width: 40.0, height: 40.0)
//                    Slider(value: $taux, in: 0...10)
//                        .frame(width: 200.0, height: 20.0)
//                    Image(systemName: "heart")
//                        .resizable(resizingMode: .tile)
//                        .aspectRatio(contentMode: .fill)
//                        .foregroundColor(Color.red)
//                        .frame(width: 70.0, height: 70.0)
//
//                }
//                Text("\(taux, specifier: "%.0f")")
//
//                Spacer()
//                Spacer()
//                Spacer()
//
//
//            }
//
//            .toolbar {
//                ToolbarItem(placement: .confirmationAction) {
//                    Image(systemName: "waveform.circle.fill")
//                        .font(.system(size: 30))
//                        .frame(width: 100, height: 100)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
//                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
//                        .shadow(radius: 4)
//                }
//
//                ToolbarItem(placement: .cancellationAction) {
////                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
////                        .font(.system(size: 50))
////                        .frame(width: 100, height: 100)
////                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
////                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
////                        .shadow(radius: 4)
//                }
//            }
//
//        }
//    }
//
//
//}
//
//struct EmotionView_1_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            EmotionView_1(emotion: Emotion.emotionList[0])
//        }
//    }
//}
