//
//  CountryDetailsViewController.swift
//  Countries
//
//  Created by Hakan Satya on 19/11/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class CountryDetailsViewController: UITableViewController {

    //
    // MARK: - Properties
    
    var country: Country!
    
    //
    // MARK: - Outlets
    
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var continentLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    //
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load data
        if let country = self.country {
            self.title = country.name
            self.capitalLabel.text = country.name
            self.codeLabel.text = country.code
            self.continentLabel.text = country.continent
            self.areaLabel.text = "\(country.area)"
            self.populationLabel.text = "\(country.population)"
        }
    }

}
