//
//  profileView.swift
//  troca_ai
//
//  Created by luan on 13/05/25.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.lightBlue.opacity(0.9))
                    .frame(height: 150)
                    .edgesIgnoringSafeArea(.top)
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 122)
                    .position(x: 200, y: 40)
                
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Nome do usuário")
                        Image(systemName: "pencil")
                            .bold()
                        
                        Spacer()
                    }
                    .padding(.top,140)
                    .padding(.leading, 10)
                }
                VStack{
                    Text("O que tenho a oferecer: ")
                        .padding(.top, 60)
                    Rectangle()
                        .fill(Color.blue.opacity(0.3))
                        .frame(width: 300, height: 200)
                        .cornerRadius(10)
                        .overlay(
                            VStack {
                                Text("Ofereco: Olá, eu sou o Arthur e posso passear com seu pet.")
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 2)
                                Image("dog")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:150, height: 100)
                                    .cornerRadius(10)
                                    .padding(.bottom, 10)
                            }
                        )
                        .padding(.top, 10)
                }
                .padding(.top, 150)
                
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Ajuda e Suporte")
                        Spacer()
                    }
                    .padding(.top, 520)
                    .padding(.leading, 40)
                    
                }
                
            }
            NavigationLink(destination: CriarAnuncioView()){
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .position(CGPoint(x: 10.0, y: 10.0))
                        Spacer()
                    }
                    .padding(.leading, 290)
                }
            }
        }
    }
}
#Preview {
    profileView()
}
