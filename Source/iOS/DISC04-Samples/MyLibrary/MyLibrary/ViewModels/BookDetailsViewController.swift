//
//  BookDetailsViewController.swift
//  MyLibrary
//
//  Created by Hakan Satya on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {

    //
    // MARK: - Properties
    
    var book: Book?
    
    //
    // MARK: - Outlets
    
    @IBOutlet weak var bookCoverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var editionLabel: UILabel!
    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let book = book {
            bookCoverImageView.image = UIImage(named: book.coverImageName)
            titleLabel.text = book.title
            authorLabel.text = book.author
            publisherLabel.text = book.publisher
            yearLabel.text = String(book.year)
            editionLabel.text = "\(book.edition) Edição"
        }
    }
    
}
