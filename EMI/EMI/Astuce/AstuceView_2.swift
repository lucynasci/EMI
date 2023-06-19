//
//  AstuceView_2.swift
//  EMI
//
//  Created by apprenant50 on 01/02/2022.
//

import SwiftUI

struct AstuceView_2: View {
    var body: some View {
        ZStack {
            BackgroundGeneral(color_claire: .blue, color_foncee: .mint.opacity(0.7))
            VStack{
                Image("Astuce2_Img")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                    .shadow(radius: 4)
                Text("""
                     La MAIN: un outil pour dévélopper la confiance en soi des enfants
                     """)
                    
                    .font(.system(size: 20,weight: .bold,design: .rounded))
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.blue.opacity(0.7))
                
                    .shadow(radius: 2)
                    .frame(maxWidth: .infinity)
                ScrollView{
                    
                    Text("""
                     Pour cela, nous allons leur faire prendre conscience de tout ce qu’ils savent déjà faire et de leurs gestes quotidiens.
                     Il s’agira de construire le support : le contour de leur main tracé au crayon, au feutre ou au stylo.
                     Puis d‘écrire ou de dessiner ce qu’ils ont fait et savent faire dans le laps de temps que vous souhaitez :
                     * depuis leur naissance
                     * depuis un mois
                     * dans la journée ...
                     
                     Cet exercice de la main a plusieurs vertus :
                     * il ancre les enfants dans l’instant présent en pleine conscience de leur corps
                     * il développe leur concentration
                     * il leur rappelle tout ce qu’ils savent faire
                     * il favorise leur apprentissage car il se remémore alors leurs actions
                      
                     Dans la liste, il sera important (et là c’est un outil éducatif) d’évoquer les actes « positifs ». Par exemple, si l’enfant a tapé, nous ne le noterons pas. L’important est de se concentrer sur les comportements qui valorisent les acquis, les intentions positives et démontrent les progrès afin qu’ils se reproduisent.
                      
                     Astuce supplémentaire : mettre un code couleur. En vert : tout ce que je maitrise. En bleu : tout ce que je commence à faire (les nouveaux apprentissages).
                     """)
                }
                .font(.system(size: 25))
                .padding()
                .frame(width: 350, height: 500)
                .foregroundColor(.black.opacity(0.8))
                .background(.thinMaterial)
                .cornerRadius(12)
            }
        }
    }
    
}



struct AstuceView_2_Previews: PreviewProvider {
    static var previews: some View {
        AstuceView_2()
    }
}
