//
//  CountryViewCell.swift
//  Countries
//
//  Created by Rafael Veronezi on 30/11/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class CountryViewCell: UITableViewCell {
    
    //
    // MARK: - Properties

    var country: Country? {
        didSet {
            if let country = country {
                nameLabel.text = country.name
                capitalLabel.text = "Capital: \(country.capital)"
            }
        }
    }
    
    
    //
    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    
    
}
