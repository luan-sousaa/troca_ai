//
//  homeView.swift
//  troca_ai
//
//  Created by luan on 13/05/25.
//

import SwiftUI

struct homeView: View {
    
    @StateObject var viewModel = ViewModel()
    let colunas = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        VStack{
            ZStack{
                Rectangle()
                    .fill(.lightBlue)
                    .ignoresSafeArea()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 122)
            }
            .frame(height: 100)
            VStack(alignment: .leading){
                NavigationStack{
                    HStack {
                        Text("Categorias:")
                            .font(.system(size: 16))
                            .bold()
                            .padding()
                        Spacer()
                    }
                    LazyVGrid(columns: colunas, spacing: 20) {
                        ForEach(viewModel.categories, id: \.self){ categorie in
                            VStack{
                                HStack{
                                    //  Spacer()
                                    ZStack{
                                        Rectangle()
                                            .fill(.babyGray)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .frame(width: 78, height: 70)
                                        VStack{
                                            Text(categorie.Categoria!)
                                                .padding(.bottom, 3)
                                                .font(.system(size: 13))
                                                .foregroundStyle(Color.mediumBlue)
                                                .bold()
                                            Image(systemName: categorie.Icon!)
                                                .padding(.bottom)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                    HStack{
                        Text("Troque com: ")
                            .font(.system(size: 16))
                            .bold()
                            .padding()
                        Spacer()
                    }
                    ZStack{
                        Rectangle()
                            .fill(.babyBlue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .frame(height: 80)
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 45))
                            VStack(alignment: .leading){
                                Text("Nome")
                                    .font(.system(size: 18))
                                    .bold()
                                Text("Ofereco: Olá, eu sou o Arthur e posso passear com seu pet.")
                                    .font(.system(size: 15))
                            }
                        }
                    }
                    Spacer()
                }
            }
            .padding()
            .onAppear(){
                viewModel.fetch()
            }
        }
    }
    }


#Preview {
    homeView()
}





    
        



