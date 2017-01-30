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
    
    //
    // MARK: - Methods
    
    /**
        (en): Parse the JSON Country Info data from Geonames Service and loads Country information on this instance.
     
        (pt): Interpreta o documento JSON com os dados do país no formato do serviço GeoNames e carrega em uma instância do tipo Country.
     
        - parameter data: An Data object with Country Info JSON (Um objeto do tipo Data com as informações do país em formato JSON).
     */
    private func parseGeonamesCountryInfoJsonData(_ data: Data) {
        let json = JSON(data: data)
        let items = json["geonames"].arrayValue
        
        self.countries.removeAll(keepingCapacity: false)
        for item in items {
            let countryName = item["countryName"].stringValue
            let countryCode = item["countryCode"].stringValue
            let capital = item["capital"].stringValue
            let continent = item["continent"].stringValue
            let population = item["population"].intValue
            let area = item["areaInSqKm"].floatValue
            
            self.countries.append(Country(code: countryCode, name: countryName, capital: capital, continent: continent, population: population, area: area))
        }
    }
    
    /**
        (en): Refresh the list of countries in this instance using data provided by GeoNames Service. The operation runs asynchronously.
     
        (pt): Recarrega a lista de países dessa instância usando os dados fornecidos pelo serviço GeoNames. A operação executa de maneira assíncrona.
     
        - parameter completionHandler: An optional closure that will be run after the operation is completed (Um closure opcional para ser executado após a operação ser concluída).
     */
    func refreshListFromGeonamesService(_ completionHandler: ((_ success: Bool) -> ())?) {
        // Create a download data task to get the JSON data from the server
        let downloadDataTask = URLSession.shared.dataTask(with: CountryList.COUNTRY_INFO_URL, completionHandler:
            { (data, response, error) -> Void in
                // Check if there is error
                if let e = error {
                    print("Error trying to download data: \(e)")
                    
                    // Calls back informing not be successful. Notice the call back should run in the main thread.
                    if let c = completionHandler {
                        DispatchQueue.main.async {
                            c(false)
                        }
                    }
                    
                    return
                }
                
                // Parse JSON data from the server and calls back informing success. Notice the call back should run in the main thread.
                self.parseGeonamesCountryInfoJsonData(data!)
                if let c = completionHandler {
                    DispatchQueue.main.async {
                        c(true)
                    }
                }
        })
        
        // Start the download
        downloadDataTask.resume()
    }

    
}
