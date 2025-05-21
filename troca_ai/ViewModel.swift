//
//  ViewModel.swift
//  troca_ai
//
//  Created by luan on 15/05/25.
//
import Foundation

class ViewModel: ObservableObject{
    
    @Published var categories: [Categorias] = []
    @Published var anuncios: [TrocaAiAnuncios] = []
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.82:1880/leitura") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Categorias].self, from: data)
                DispatchQueue.main.async {
                    self?.categories = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    func fetchAnuncios(){
        guard let url = URL(string: "http://192.168.128.82:1880/leituratroca_ai") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([TrocaAiAnuncios].self, from: data)
                DispatchQueue.main.async {
                    self?.anuncios = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}


