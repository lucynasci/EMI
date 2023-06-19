//
//  ButtonColere.swift
//  Quiz test
//
//  Created by apprenant50 on 08/02/2022.
//

import SwiftUI

struct ButtonColere: View {
    @State private var opacity = 0.0
    
    var imageColere = "boxing"
    var textColere = "Oups! c'est pas ça"
    var body: some View {
        VStack {
            Button {
                opacity = 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    opacity = 0
                }
            }
        label: {
            Image(imageColere)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
    }
        
    //}
    Text(textColere)
        .font(.system(size: 43, weight: .bold, design: .rounded))
        .foregroundColor(.green)
        .frame(maxWidth: 300, maxHeight: 150, alignment: .center)
        .padding()
        .background(.red.opacity(0.5))
        .cornerRadius(12)
        .opacity(opacity)
    }
    }
}

struct ButtonColere_Previews: PreviewProvider {
    static var previews: some View {
        ButtonColere()
    }
}
