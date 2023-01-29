//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Vinicius Loss on 29/01/23.
//

import Foundation


class QuotesManager {
    
    let quotes: [Quote]
    
    init() {
        
        // Captura o nome do local do arquivo
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        //let fileURL = Bundle.main.url(forResource: "quotes.json", withExtension: nil)!
        
        // Transforma o arquivo em um objeto
        let jsonData = try! Data(contentsOf: fileURL)
        
        // Cria um tipo de objeto para decodificar o json
        let jsonDecoder = JSONDecoder()
        
        // Faz o array de Quotes receber o json decodificado
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote()-> Quote {
        
        //Captura um ID randomicamente
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        
        // devolve um quote 
        return quotes[index]
    }
    
}
 
