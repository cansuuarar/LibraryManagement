//
//  Library.swift
//  LibraryManagement
//
//  Created by CANSU ARAR on 18.09.2024.
//

import Foundation

class Library {
    
    var books : [Book]
    let maxCountToBorrow = 3
    var members : [String] = ["admin"]
     
    
    init(books: [Book]) {
        self.books = books
    }
    
    func addBook(book: Book) {
        books.append(book)
    }
    
    
    func beMember(memberName: String) {
        members.append(memberName)
    }
    
    /*
    func borrowBook(bookName: String, memberName: String) {
        var countBorrow = 0
        var tempBooks = books
        while countBorrow <= maxCountToBorrow {
            for book in 0...tempBooks.count {
                if tempBooks[book].name == bookName {
                    tempBooks.remove(at: book)
                    countBorrow += 1
                }
            }
            break
        }
    }
     
     */
    
    //Üyeler kitap ödünç alabilmelidirler. Aynı anda maksimum 3 kitap ödünç alabilirler.
    
    func borrowBook2(book: Book , member: String) {
        var countBorrow = 0
        var tempBooks = books
        var borrowedBooks: [Book] = []
        
        if members.contains(member) {
            while countBorrow <= maxCountToBorrow {
                borrowedBooks.append(book)
                countBorrow += 1
                break
            }
        }
    }
    
    
}
