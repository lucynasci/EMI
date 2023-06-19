//
//  EducationRow.swift
//  EducationView_3
//
//  Created by apprenant65 on 05/02/2022.
//

import SwiftUI

struct EducationRow: View {
    
    let education: Education
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color.white.opacity(0.6))
                .frame(width:370.0, height: 70.0)
                .shadow(radius: 4)
        
            HStack {
                
                Image(education.educImage)
                .resizable()
                    .scaledToFit()
                    .frame(width: 65.0, height: 65)
               .padding(.leading, 50.0)
                    .clipShape(Rectangle())
                    .shadow(radius: 4)
                
                ZStack {
                Text(education.educName)
                        .multilineTextAlignment(.leading)
                    .clipShape(Rectangle())
                    .frame(width: 150, height: 80)
                    
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .lineLimit(2)
                    .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                }
               
Button{
    SoundManager.instance.playSound(sound: education.recording)
    
}label:{
    Image(systemName: "waveform.circle.fill").resizable() .aspectRatio(contentMode: .fill)
        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
    .scaledToFit().frame(width: 50.0, height: 50).clipShape(Circle()).foregroundColor(Color.gray).shadow(color: .black, radius: 1)
                
            }
                
                Button
                {
                    //code
                
            } label: {
                NavigationLink(destination: EducationView_4()) {
                    Image(systemName: "chevron.forward.circle.fill").resizable().aspectRatio(contentMode: .fill).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                        .scaledToFit()
                        .frame(width: 50.0, height: 50)
                        .clipShape(Circle()).foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464)).shadow(color: .black, radius: 1)
                    .padding(.trailing, 49.0)
                }
                
            }
                
            }
            
        }
        
    }
    }
    
struct EducationRow_Previews: PreviewProvider {
            static var previews: some View {
                EducationRow(education: .init(educName: "CALIN", educImage: "calin", recording: .bravo))
            }
        }
    

//"chevron.forward.circle.fill"
