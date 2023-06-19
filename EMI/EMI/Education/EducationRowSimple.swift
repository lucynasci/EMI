//
//  EducationRowSimple.swift
//  EducationView_3
//
//  Created by apprenant65 on 05/02/2022.
//

import SwiftUI

struct EducationRowSimple: View {
    let educationSimple: EducationSimple
    var body: some View {
            
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white.opacity(0.6))
                    .frame(width:370.0, height: 70.0)
                    .shadow(radius: 4)
            
                HStack {
                    
                    Image(educationSimple.educImage)
                    .resizable()
                        .scaledToFit()
                        .frame(width: 65.0, height: 65)
                   .padding(.leading, 50.0)
                        .clipShape(Rectangle())
                        .shadow(radius: 4)
                    
                    ZStack {
                    Text(educationSimple.educName)
                            .multilineTextAlignment(.leading)
                        .clipShape(Rectangle())
                        .frame(width: 210, height: 80)
                        
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .lineLimit(2)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                    }
                   
   
                    
                    Button
                    {
                        SoundManager.instance.playSound(sound: educationSimple.recording)
                    
                } label: {
                    Image(systemName: "waveform.circle.fill").resizable().aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                        .scaledToFit()
                        .frame(width: 50.0, height: 50)
                        .clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
                        .padding(.trailing, 49.0)
                    
                }
                    
                }
                
            }
            
        }
        }
        
struct EducationRowSimple_Previews: PreviewProvider {
    static var previews: some View {
        EducationRowSimple(educationSimple: .init(educName: "AOEPZPE", educImage: "calin", recording: .bravo))
    }
}
