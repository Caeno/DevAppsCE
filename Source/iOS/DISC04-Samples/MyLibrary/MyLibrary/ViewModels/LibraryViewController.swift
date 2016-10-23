//
//  LibraryViewController.swift
//  MyLibrary
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 View Controller responsável por gerenciar a tela principal do programa, que é um **UITableViewController** que lista os livros cadastrados na fonte de dados.
 */
class LibraryViewController: UITableViewController {

    //
    // MARK: - Properties

    /// Uma propriedade que armazena a fonte de dados de onde extraimos as informações do livro.
    var dataSource = DataSource()
    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //
    // MARK: - Table view data source

    /// Método chamado automaticamente pelo UITableViewController quando ele precisa determinar a quantidade de registros que vão ser exibidos na listagem.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.books.count
    }

    /// Método chamado automaticamente pelo UITableViewController quando ele precisa configurar a aparência de uma célula da lista.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Obtém uma célula re-utilizável
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        
        // Obtém o registro de livro referente ao índice a ser apresentado
        let book = dataSource.books[indexPath.row]

        // Configura os atributos da célula
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.author
        cell.imageView?.image = UIImage(named: book.coverImageName)

        return cell
    }

    //
    // MARK: - Navigation

    /// Método chamado automaticamente pelo sistema quando um Segue é disparado.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell),
            segue.identifier == "BookDetails" {
            
            let dest = segue.destination as! BookDetailsViewController
            dest.book = dataSource.books[indexPath.row]
        }
    }

}
