//
//  AnuncioView.swift
//  troca_ai
//
//  Created by luan on 20/05/25.
//

import Foundation
import SwiftUI

struct CriarAnuncioView: View {
    @State private var procura = ""
    @State private var oferece = ""
    @State private var descricao = ""
    @State private var mostrarAlerta = false

    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(Color.lightBlue)
                .frame(height: 150)
                .overlay(
                    VStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 122)
                    }
                )

            Text("Adicionar Serviço")
                .font(.title2)
                .bold()

            Group {
                TextField("Escreva o que você procura:", text: $procura)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                TextField("Escreva o que você oferece:", text: $oferece)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                TextField("Descrição", text: $descricao)
                    .frame(height: 40)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                Text("Adicionar Imagem")
                Image(systemName: "photo.badge.plus")
                    

                    
                 
            }
            .padding(.horizontal)

            
            Button(action: {
                mostrarAlerta = true
            }) {
                Text("Adicionar anuncio")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .alert(isPresented: $mostrarAlerta){
                Alert(
                    title: Text("Sucesso"),
                    message: Text ("Seu serviço foi adicionado com sucesso!"),
                    dismissButton: .default(Text("OK"))
                )
            }

            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct CriarAnuncioView_Previews: PreviewProvider {
    static var previews: some View {
        CriarAnuncioView()
    }
}
