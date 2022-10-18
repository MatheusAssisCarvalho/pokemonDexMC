//
//  PokedexViewModel.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 09/08/22.
//

import Foundation

protocol PokedexViewModelProtocol {
    var service: PokedexService { get }
    var data: Any { get }
}

class PokedexViewModel: PokedexViewModelProtocol {
    var service: PokedexService
    var data: Any
    
    init (service: PokedexService) {
        self.service = service
        self.data = service.getLocalData()
    }
}
