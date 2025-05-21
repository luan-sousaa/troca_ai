//
//  Model.swift
//  troca_ai
//
//  Created by luan on 15/05/25.
//

import Foundation

struct Categorias: Decodable, Hashable{
    let Categoria: String?
    let Icon: String?
}
struct TrocaAiAnuncios: Decodable, Hashable{
let name: String?
let ofereco: String?
let busco: String?
let minhaCategoria: String?
let descricao: String?
let avaliacoes: [Avaliacoes]
}

struct Avaliacoes: Codable, Hashable{
let nome: String?
let avaliacao: String?
}


