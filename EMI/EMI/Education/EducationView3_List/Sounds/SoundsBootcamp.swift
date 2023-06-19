//
//  SoundsBootcamp.swift
//  EducationView_3
//
//  Created by apprenant65 on 05/02/2022.
//

import SwiftUI
import AVKit

class SoundManager {
    static let instance = SoundManager() // Singelton pour apperer
    
    var player: AVAudioPlayer?
    
    
    
    enum SoundOption: String {
        
        case soundDrums
        case soundParty
        case bravo
        case oiseaux
        case vache
        case colere
        case joie
        case tristesse
        case education1
        case education2
        case education3Jeu1
        case education3Jeu2
        case emotion1
        case emotion2
        case education3
        case education3Calin
        case education3Doudou
        case education4
        case  niveau
        case EducationView_2
        case bravoPartageTaJoi
        case quizView1
        case bloop
        
    }
    
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("No sound found. \(error.localizedDescription)")
            
        }
    }
}

struct SoundsBootcamp: View {
    
    var body: some View {
        
        
        VStack (spacing: 40){
            
            Button("Play sound1"){
                SoundManager.instance.playSound(sound: .education3)
                }
                       
            
                Button {
                SoundManager.instance.playSound(sound: .tristesse)
                
            }
                label:{
                    Image(systemName: "waveform.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color(red: 0.917, green: 0.355, blue: 0.464))
                        .frame(width: 30.0, height: 38.0)
                    
                }
            
        }
    }
}

struct SoundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBootcamp()
    }
}
