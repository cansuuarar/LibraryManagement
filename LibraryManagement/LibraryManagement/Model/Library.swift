//
//  Library.swift
//  LibraryManagement
//
//  Created by CANSU ARAR on 18.09.2024.
//

import Foundation

final class Library {
    
    private var books : [Book]
    private var members : [Member] = []
    private let maxCountToBorrow = 3
     
    init(books: [Book]) {
        self.books = books
    }
    
    func addBook(book: Book) {
        books.append(book)
    }
    
    func beMember(member: Member) {
        members.append(member)
    }
    
    func borrowBook(book: Book, member: Member) {

        guard members.contains(member) && books.contains(book) else {
            print("\(book.name) & \(member.name) couldnt found")
            return //metottan direkt çıkar,, alt satırlara bakmaz.!!!
        }
        
        guard member.books.count < maxCountToBorrow else {
            print("max borrowed book limit exceed!")
            return
        }
        member.books.append(book)
    }
}
