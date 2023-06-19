//
//  EmotionView_2.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct EmotionView_2: View {
    var body: some View {
        ZStack{
            BackgroundGeneral(color_claire: .white.opacity(0), color_foncee: .yellow.opacity(1.0))
            VStack{
                Image("confete")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 300, height: 100)
                        .foregroundColor(.orange.opacity(0.3))
                    Text("Bravo!")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.black.opacity(0.8))
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 300, height: 200)
                        .foregroundColor(.orange.opacity(0.3))
                    Text("""
                         Partage ta joie avec les autres, tu peux dancer, chanter ou distribuer des callin
                         """)
                        .font(.system(size: 30))
                        .foregroundColor(.black.opacity(0.8))
                        .frame(width: 280, height: 250)
                }
                Image("happy")
                    .resizable()
                    .frame(width: 150, height: 150)
                // Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button{
                        SoundManager.instance.playSound(sound: .bravoPartageTaJoi)
                    }
                label:{
                    Image(systemName: "waveform.circle.fill")
                        .font(.system(size: 30))
                       // .frame(width: 100, height: 100)
                        //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .foregroundColor(.orange.opacity(0.5))
                        .shadow(radius: 4)
                }
                
                }
                
            }
        }
    }
}

struct EmotionView_2_Previews: PreviewProvider {
    static var previews: some View {
        EmotionView_2()
    }
}




////
////  EmotionView_2.swift
////  EMI
////
////  Created by apprenant50 on 01/02/2022.
////
//
//import SwiftUI
//
//struct EmotionView_2: View {
//    var body: some View {
//        ZStack{
//            VStack{
//                Image("fete")
//
//                ZStack {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: 300, height: 100)
//                    .foregroundColor(Color(red: 0.69, green: 0.868, blue: 0.98))
//                    Text("Bravo 🤩")
//                        .font(.title)
//                        .fontWeight(.black)
//                }
//
//                ZStack {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: 300, height: 200)
//                    .foregroundColor(Color(red: 0.69, green: 0.868, blue: 0.98))
//                    Text("""
//                         partage ta joie avec les autres, tu peux dancer, chanter ou distribuer des callin
//                         """)
//                        .font(.title)
//                        .fontWeight(.thin)
//                        .frame(width: 280, height: 250)
//                }
//                Image("pompom")
//                    .resizable()
//                    .frame(width: 150, height: 150)
//              // Spacer()
//            }
//            ButtonTop()
//        }
//    }
//}
//
//struct EmotionView_2_Previews: PreviewProvider {
//    static var previews: some View {
//        EmotionView_2()
//    }
//}
