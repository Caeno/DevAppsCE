//
//  CountryList.swift
//  Countries
//
//  Created by Rafael Veronezi on 19/11/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit
import SwiftyJSON

class CountryList: NSObject {
    
    //
    // MARK: - Properties
    
    static let COUNTRY_INFO_URL = URL(string: "http://api.geonames.org/countryInfoJSON?username=ravero")!
    var countries: [Country]
    
    //
    // MARK: - Initializers
    
    override init() {
        // Some sample data to start with
        self.countries = [
            Country(code: "AR", name: "Argentina", capital: "Buenos Aires", continent: "South America", population: 41343201, area: 2766890.0),
            Country(code: "BR", name: "Brazil", capital: "Brasília", continent: "South America", population: 201103330, area: 8511965.0),
            Country(code: "FR", name: "France", capital: "Paris", continent: "Europe", population: 41343201, area: 2766890.0),
            Country(code: "IT", name: "Italy", capital: "Rome", continent: "South America", population: 41343201, area: 2766890.0),
            Country(code: "US", name: "United States", capital: "Washington", continent: "North America", population: 41343201, area: 2766890.0)
        ]
        
        super.init()
    }
    
}
