//
//  Book.swift
//  MyLibrary
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import Foundation
import UIKit

/**
 Estrutura representa as informações de um Livro.
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
 
 - note:
 Extensões são um recurso do Swift que permitem incluir funcionalidades (como propriedades, métodos e implementação de protocolos) a classes e structs existentes.
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
