//
//  Book.swift
//  LibraryManagement
//
//  Created by CANSU ARAR on 18.09.2024.
//

import Foundation

class Book {
    var name: String
    var bookType: BookTypes
    var shelfLocation: String {
        return "\(name.first!) - \(Int.random(in: 0...10))"
    }
    
    init(name: String, bookType: BookTypes) {
        self.name = name
        self.bookType = bookType
        
    }
    
}
