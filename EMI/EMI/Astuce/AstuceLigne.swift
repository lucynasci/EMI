//
//  MyPrototyp.swift
//  EMI
//
//  Created by apprenant53 on 02/02/2022.
//

import SwiftUI

struct AstuceLigne: View {
    var text:String = " Astuces pour consoler"
    var image: String = "chevron.forward.circle.fill"
    var body: some View {
        ZStack{
            
            HStack{
                Text(text)
                    .font(.system(size: 25))
                
                Spacer()
                Image(systemName: image)
                    .foregroundColor(.blue.opacity(0.7))
                
                
            }
            
            .font(.title)
            
        }
    }
    
}





struct AstuceLigne_Previews: PreviewProvider {
    static var previews: some View {
        AstuceLigne()
    }
}
