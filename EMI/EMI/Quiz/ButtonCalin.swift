//
//  ButtonCalin.swift
//  Quiz test
//
//  Created by apprenant50 on 08/02/2022.
//

import SwiftUI

struct ButtonCalin: View {
    @State private var opacity = 0.0
    var imageCalin = "calin-1"
    var textCalin = "Bravo"
    var body: some View {
        VStack {
            Button {
                opacity = 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    opacity = 0
                }
            }
        label: {
            Image(imageCalin)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
    }
        
    //}
    Text(textCalin)
        .font(.system(size: 43, weight: .bold, design: .rounded))
        .foregroundColor(.green)
        .frame(maxWidth: 300, maxHeight: 150, alignment: .center)
        .padding()
        .background(.green.opacity(0.5))
        .cornerRadius(12)
        .opacity(opacity)
    }
    }
}

struct ButtonCalin_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCalin()
    }
}
