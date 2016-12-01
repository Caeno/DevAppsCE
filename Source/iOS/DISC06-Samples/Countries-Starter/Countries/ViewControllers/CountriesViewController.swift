//
//  CountriesViewController.swift
//  Countries
//
//  Created by Rafael Veronezi on 19/11/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit


class CountriesViewController: UITableViewController {

    //
    // MARK: - Properties
    
    var countryList = CountryList()

    
    //
    // MARK: - View Lifecylce
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    //
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as! CountryViewCell
        let country = self.countryList.countries[indexPath.row]
        cell.country = country
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCountry" {
            let destVC = segue.destination as! CountryDetailsViewController
            let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)!
            let country = self.countryList.countries[indexPath.row]
            destVC.country = country
        }
    }
    
    //
    // MARK: - Action Methods
    
    @IBAction func refreshTapped(_ sender: UIBarButtonItem) {
        
    }
    
}
