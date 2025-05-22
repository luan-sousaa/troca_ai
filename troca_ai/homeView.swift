//
//  homeView.swift
//  troca_ai
//
//  Created by luan on 13/05/25.
//

//
//  ContentView.swift
//  Troca ai
//
//  Created by Turma02-24 on 13/05/25.
//

import SwiftUI

struct homeView: View {
    @StateObject var viewModel = ViewModel()
    
    let colunas = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var categoriaAux: Categorias = Categorias(Categoria: "", Icon: "")
    @State var flagAux: Bool = false
    
    
    var body: some View {
        NavigationStack{
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
            
                HStack {
                    Text("Categorias:")
                        .font(.system(size: 16))
                        .bold()
                        .padding()
                    Spacer()
                }
                LazyVGrid(columns: colunas, spacing: 10) {
                    ForEach(viewModel.categories, id: \.self){ categorie in
                        VStack{
                            HStack{
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
                        .onTapGesture {
                            categoriaAux = categorie
                            flagAux = true
                        }
                    }
                }
                Spacer()
                HStack{
                    Text("Troque com: \(categoriaAux.Categoria!) ")
                        .font(.system(size: 16))
                        .bold()
                        .padding()
                    Spacer()
                }
                ScrollView{
                    if(flagAux) {
                        ForEach(viewModel.anuncios
                            .filter({ $0.minhaCategoria == categoriaAux.Categoria}), id: \.self){anuncio in
                                NavigationLink(destination: InfoView(pAnuncio: anuncio)){
                                    ZStack{
                                        Rectangle()
                                            .fill(.babyBlue)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .frame(height: 80)
                                        HStack{
                                            Image(systemName: "person.circle.fill")
                                                .font(.system(size: 45))
                                                .padding(.leading)
                                                .foregroundStyle(.black)
                                     
                                            VStack(alignment: .leading){
                                                Text(anuncio.name!)
                                                    .font(.system(size: 18))
                                                    .foregroundStyle(.black)
                                                    .bold()
                                                    Text("Ofereco: \(anuncio.ofereco!)")
                                                        .font(.system(size: 15))
                                                        .foregroundStyle(.black)
                                                        .multilineTextAlignment(.leading)
                                                   
                                                }
                                          
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                    }else{
                        ForEach(viewModel.anuncios.prefix(3), id: \.self){anuncio in
                            NavigationLink(destination: InfoView(pAnuncio: anuncio)){
                                ZStack{
                                    Rectangle()
                                        .fill(.babyBlue)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .frame(height: 80)
                                    HStack(alignment: .top){
                                        Image(systemName: "person.circle.fill")
                                            .font(.system(size: 45))
                                            .padding(.leading)
                                            .foregroundStyle(.black)
                                        VStack(alignment: .leading){
                                            Text(anuncio.name!)
                                                .font(.system(size: 18))
                                                .bold()
                                                .foregroundStyle(.black)
                                            Text("Ofereco: \(anuncio.ofereco!)")
                                                .font(.system(size: 15))
                                                .foregroundStyle(.black)
                                                .multilineTextAlignment(.leading)
                                            
                                        }
                                        Spacer()
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
        .tint(.black)
        .onAppear(){
            viewModel.fetch()
            viewModel.fetchAnuncios()
        }
    }
}
#Preview {
    ContentView()
}
