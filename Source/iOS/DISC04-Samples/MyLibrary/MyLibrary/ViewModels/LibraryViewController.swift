//
//  LibraryViewController.swift
//  MyLibrary
//
//  Created by Hakan Satya on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class LibraryViewController: UITableViewController {

    //
    // MARK: - Properties

    var dataSource = DataSource()
    
    //
    // MARK: - View Controller Lifecycle
    
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
        return dataSource.books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        let book = dataSource.books[indexPath.row]

        // Configure the cell...
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.author
        cell.imageView?.image = UIImage(named: book.coverImageName)

        return cell
    }

    //
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell),
            segue.identifier == "BookDetails" {
            
            let dest = segue.destination as! BookDetailsViewController
            dest.book = dataSource.books[indexPath.row]
        }
    }

}
