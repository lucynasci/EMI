//
//  ButtonTop.swift
//  EMI
//
//  Created by apprenant65 on 04/02/2022.
//

import SwiftUI
struct ButtonTop: View {
    var body: some View {
        
        Button {
            SoundManager.instance.playSound(sound: .bravo)
        }label: {
             Image(systemName: "waveform.circle.fill")
                .font(.system(size: 50))
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
            .shadow(radius: 4)
        }
    
//        Image(systemName: "arrowshape.turn.up.left.circle.fill")
//            .font(.system(size: 50))
//            .frame(width: 100, height: 100)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//            .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
//            .shadow(radius: 4)
    }
}
