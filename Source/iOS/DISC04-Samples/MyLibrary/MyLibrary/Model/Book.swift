//
//  Book.swift
//  MyLibrary
//
//  Created by Hakan Satya on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import Foundation
import UIKit

/**
    Representa um Livro
 */
struct Book {
    
    //
    // MARK: - Properties

    /// Identificador único numérico deste livro
    var id: Int
    
    /// Título do Livro
    var title: String
    
    /// Nome do Autor
    var author: String
    
    /// Editora
    var publisher: String
    
    // Número da Edição
    var edition: Int = 1
    
    // Ano de lançamento original
    var year: Int
    
}

/**
    Adiciona funcionalidades a estrutura "Book".
 */
extension Book {
    
    /// Um NumberFormatter compartilhado para codificar o identificador do livro
    static let formatter: NumberFormatter = {
        var f = NumberFormatter()
        f.minimumIntegerDigits = 3
        return f
    }()
    
    /// Nome da Imagem que representa a capa do Livro
    var coverImageName : String {
        return "BookCover_\(formattedId)"
    }
    
    /// Código do livro formatado com zeros na frente
    var formattedId : String {
        return Book.formatter.string(from: NSNumber(value: self.id))!
    }
    
}
