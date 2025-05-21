//
//  InfoView.swift
//  troca_ai
//
//  Created by luan on 20/05/25.
//

import Foundation
import SwiftUI

struct InfoView: View {
    var pAnuncio: TrocaAiAnuncios
    var body: some View
    {
        ZStack(alignment: .top) {
                    Rectangle()
                .fill(Color.lightBlue)
                        .frame(height: 150)
                        .edgesIgnoringSafeArea(.top)
                    
              VStack {
                        Spacer().frame(height: 100)
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding()
                            .position(x: 195, y: -30)
                        Spacer()
             VStack(alignment: .leading, spacing: 8) {
                 
                 HStack{
                     Image(systemName: "person.crop.circle")
                         .resizable()
                         .scaledToFit()
                         .frame(height: 50)
                     //foreach
                     Text(pAnuncio.name!)
                      .font(.headline)
                 }
                            
                            Text("Ofereço:\(pAnuncio.ofereco!)")
                            Text("Procuro:\(pAnuncio.busco!)")
                                       
                            Text("Informações de \(pAnuncio.name!):")
                             .bold()
                                       
               HStack {
                            Image(systemName: "phone.fill")
                            Text("(99) 99999-9999            ")
                  
                                       }
               HStack {
                       Image(systemName: "camera.fill")
                       Text("@_profile")
                       
                                       }
                                   }
                            .padding()
                            .background(Color.babyBlue)
                            .cornerRadius(12)
                            .padding(.horizontal)
                            .position(x: 187, y: -100)
                                   
                    }
            VStack{
                Text("Avaliações:")
                    .position(x: 65, y: 447)
                    .bold()
                
                ForEach(pAnuncio.avaliacoes,id: \.self){anuncio in
                    VStack(alignment: .leading) {
                        HStack{
                            Image(systemName: "person.circle")
                            VStack {
                                Text(anuncio.nome!)
                                    .bold()
                                Text(anuncio.avaliacao!)
                            }
                            
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .position(x:187, y:219)
                }
            }
            
                }
            }
        }
   
#Preview {
    ContentView()
}
