//
//  BaseCoordinator.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 09/08/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }
    
    func start()
    func start(coordinator: Coordinator)
    func didFinish(coordinator: Coordinator)
}

class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    
    var navigationController: UINavigationController = UINavigationController()
    
    func start() {
        fatalError("Start method must be implemented")
    }
    
    func start(coordinator: Coordinator) {
        childCoordinator.append(coordinator)
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
    func didFinish(coordinator: Coordinator) {
        if let index = childCoordinator.firstIndex(where: { $0 === coordinator}) {
            childCoordinator.remove(at: index)
        }
    }
    
    
}
