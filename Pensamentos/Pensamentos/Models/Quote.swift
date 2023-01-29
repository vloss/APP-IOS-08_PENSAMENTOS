//
//  Quotes.swift
//  Pensamentos
//
//  Created by Vinicius Loss on 29/01/23.
//

import Foundation

struct Quote: Codable  { //Encodable (Permite converter a classe em um json), Decodable (Pega um json e transforma em um objeto Quote por exempo)

    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " ‟" + quote + "” "
    }
    
    var authorFormatted: String{
        return "- " + author + " -"
    }
}
