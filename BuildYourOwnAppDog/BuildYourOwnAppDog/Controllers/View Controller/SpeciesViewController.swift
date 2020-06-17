//
//  SpeciesViewController.swift
//  BuildYourOwnAppDog
//
//  Created by Kristin Samuels  on 6/17/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

class SpeciesViewController: UIViewController {
    @IBOutlet var speciesSearchBar: UISearchBar!
    @IBOutlet var speciesNameLabel: UILabel!
    @IBOutlet var speciesLanguageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speciesSearchBar.delegate = self
    }
    
    func updateViews(species: Species) {
        DispatchQueue.main.async {
            self.speciesNameLabel.text = species.name
            self.speciesLanguageLabel.text = species.language
        }
    }
}
extension SpeciesViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchTerm = searchBar.text, !searchTerm.isEmpty else { return }
        SpeciesController.fetchSpecies(searchTerm: searchTerm) { [weak self] (result) in
            switch result {
            case .success(let species):
                self?.updateViews(species: species)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

