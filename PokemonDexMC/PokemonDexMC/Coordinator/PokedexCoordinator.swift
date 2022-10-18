//
//  PokedexCoordinator.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 09/08/22.
//

import Foundation

class PokedexCoordinator: BaseCoordinator {
    override func start() {
        let viewController = PokedexViewController()
        navigationController.viewControllers = [viewController]
    }
}
