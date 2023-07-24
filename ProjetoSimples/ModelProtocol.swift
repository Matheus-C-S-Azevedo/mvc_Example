//
//  ModelProtocol.swift
//  ProjetoSimples
//
//  Created by Afonso Lucas on 29/05/23.
//

import Foundation

protocol ModelDelegate: AnyObject {
    
    func didChangeData(data: String)
}
