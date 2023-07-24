//
//  Model.swift
//  ProjetoSimples
//
//  Created by Afonso Lucas on 29/05/23.
//

import Foundation

class Model {

    weak var delegate: ModelDelegate?
    
    private var database = "Texto salvo" {
        didSet {
            delegate?.didChangeData(data: database)
        }
    }
    
    func changeDatabaseText(text: String) {
        database = text
    }
    
    func getData() -> String {
        return database
    }
}
