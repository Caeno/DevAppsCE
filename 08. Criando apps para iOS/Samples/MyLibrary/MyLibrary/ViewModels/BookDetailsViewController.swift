//
//  BookDetailsViewController.swift
//  MyLibrary
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 View Controller responsável por gerenciar a tela que apresenta os detalhes de um livro em específico.
 */
class BookDetailsViewController: UIViewController {

    //
    // MARK: - Properties
    
    /// Carrega o Livro cujo os detalhes estão sendo exibidos.
    var book: Book?
    
    //
    // MARK: - Outlets
    
    /// Outlet para o componente de imagem que apresenta a capa do livro.
    @IBOutlet weak var bookCoverImageView: UIImageView!
    
    /// Outlet para o Label que apresenta o título do livro.
    @IBOutlet weak var titleLabel: UILabel!
    
    /// Outlet para o Label que apresenta o nome do Autor do livro.
    @IBOutlet weak var authorLabel: UILabel!
    
    /// Outlet para o Label que apresenta a editora do livro.
    @IBOutlet weak var publisherLabel: UILabel!
    
    /// Outlet para o label que apresenta o ano em que o livro foi lançado.
    @IBOutlet weak var yearLabel: UILabel!
    
    /// Outlet para o label que apresenta a edição do livro.
    @IBOutlet weak var editionLabel: UILabel!
    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Verifica se a propriedade com o livro a ser exibido foi carregada, e nesse caso carrega as informações do livro nos componentes da tela.
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
