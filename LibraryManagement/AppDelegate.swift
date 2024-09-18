//
//  AppDelegate.swift
//  LibraryManagement
//
//  Created by CANSU ARAR on 18.09.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let crimeAndPunishment = Book(name: "Crime And Punishment", bookType: BookType.crime)
        let prideAndPrejudice = Book(name: "Pride And Prejudice", bookType: BookType.romance)
                
        let library_ist = Library(books: [crimeAndPunishment, prideAndPrejudice])
               
        let ofMiceAndMen = Book(name: "Of Mice And Men", bookType: BookType.novel)
        let ofMiceAndMen2 = Book(name: "Of Mice And Men2", bookType: BookType.novel)
                
                
        library_ist.addBook(book: ofMiceAndMen)
        library_ist.beMember(memberName: "cansu")
        //library_ist.borrowBook(bookName: <#T##String#>, memberName: <#T##String#>)
                
        for member in library_ist.members {
            print(member)
        }
                
        library_ist.borrowBook2(book: crimeAndPunishment, member: "cansu")
        library_ist.borrowBook2(book: prideAndPrejudice, member: "cansu")
        library_ist.borrowBook2(book: ofMiceAndMen, member: "cansu")
        library_ist.borrowBook2(book: ofMiceAndMen2, member: "cansu")
                
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

