//
//  PokedexViewController.swift
//  PokemonDexMC
//
//  Created by MATHEUS DE ASSIS CARVALHO on 09/08/22.
//

import Foundation
import UIKit

class PokedexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var viewModel: PokedexViewModel = PokedexViewModel(service: PokedexService())
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
//        guard let data = self.viewModel.data else { return }
//        cell.textLabel?.text = self.viewModel.data.results
        let data = Array(arrayLiteral: self.viewModel.data)
        
        return cell
    }
    
}
