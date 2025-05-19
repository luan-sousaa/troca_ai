//
//  profileView.swift
//  troca_ai
//
//  Created by luan on 13/05/25.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationStack{
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
                            Text("Sofia")
                                .font(.headline)
                        }
                        
                        Text("Ofereço: Olá, eu sou a Sofia e posso dar aulas de inglês.")
                        Text("Procuro: Pintor")
                        
                        Text("Informações de Sofia:")
                            .bold()
                        
                        HStack {
                            Image(systemName: "phone.fill")
                            Text("(99) 99999-9999            ")
                            
                        }
                        HStack {
                            Image(systemName: "camera.fill")
                            Text("@sofia_profile")
                            
                        }
                    }
                    .padding()
                    .background(Color.lightBlue.opacity(0.4))
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .position(x: 187, y: -100)
                    
                }
                VStack{
                    Text("Avaliações:")
                        .position(x: 65, y: 420)
                        .bold()
                    
                    VStack(alignment: .leading) {
                        HStack{
                            Image(systemName: "person.circle")
                            Text("Maria clara")
                                .bold()
                            
                        }
                        Text("Estava desesperada pois não conseguia dominar a língua inglesa, mas a Sofia me ensinou perfeitamente. Recomendo muito essa profissional!")
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .position(x:187, y:219)
                    HStack {
                        Image(systemName: "plus.rectangle.fill")
                            .resizable()
                            .frame(width: 50, height: 40)
                            .padding()
                    }
                }
                
            }
        }
    }
}

#Preview {
    profileView()
}
