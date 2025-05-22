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
            VStack{
                VStack {
                    Spacer().frame(height: 100)
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 122)
                        .padding()
                        .position(x: 187, y: -85)
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
                       // HStack{
                            VStack(alignment: .leading){
                                Text("**Ofereço:** \(pAnuncio.ofereco!)")
                                Text("**Procuro:**\(pAnuncio.busco!)")
                                Text("**Procuro:** \(pAnuncio.descricao!)")
                            }
                            .font(.system(size: 15))
                            //                        .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                           // Spacer()
                      //  }
                        Text("Informações de \(pAnuncio.name!): ")
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
                   // .position(x: 187, y: -95)
                    
                }
                VStack(alignment:.leading){
                    Text("Avaliações:")
                    // .position(x: 65, y: 380)
                        .bold()
                        .padding()
                    ScrollView{
                        ForEach(pAnuncio.avaliacoes,id: \.self){anuncio in
                            ZStack{
                                Rectangle()
                                    .fill(.gray.opacity(0.3))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(height: 85)
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "person.circle")
                                            .font(.system(size: 45))
                                        VStack(alignment:.leading) {
                                            Text(anuncio.nome!)
                                                .bold()
                                            Text(anuncio.avaliacao!)
                                        }
                                        Spacer()
                                    }
                                 
                                }
                                .padding()
                                //                            .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                // .position(x:187, y:219)
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            
                
            }
        }
    }
        }
   
#Preview {
    ContentView()
}
//Rectangle()
//    .fill(.babyBlue)
//    .clipShape(RoundedRectangle(cornerRadius: 10))
//    .frame(height: 80)
