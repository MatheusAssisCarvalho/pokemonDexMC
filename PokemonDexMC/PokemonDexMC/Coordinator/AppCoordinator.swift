//
//  AppCoordinator.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 09/08/22.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
    }
    
    override func start() {
        self.navigationController.navigationBar.isHidden = true
        
        let coordinator = PokedexCoordinator()
        coordinator.navigationController = navigationController
        
        start(coordinator: coordinator)
    }
}
