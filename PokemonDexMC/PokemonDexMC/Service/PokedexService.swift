//
//  PokedexService.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 10/08/22.
//

import Alamofire
import Foundation

class PokedexService {
    
    init(){}
    
    func getPokemon() {
        let request = AF.request("https://pokeapi.co/api/v2/pokemon/")
        
        request.responseJSON { (data) in
//            print(data)
            
        }
    }
    
    func getLocalData() -> Any {
        var json: Any
        let file = "PokemonDexDataLocal"
        if let path = Bundle.main.path(forResource: file, ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                json = try JSONSerialization.jsonObject(with: data)
                return json
            } catch {
                print("Deu ruim no json")
            }
        }
        return "Erro na leitura do arquivo"
    }
    

}
