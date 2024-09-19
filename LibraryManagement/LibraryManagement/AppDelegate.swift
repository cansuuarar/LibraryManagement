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
        
        let crimeAndPunishment = Book(name: "Crime And Punishment", bookType: BookType.crime, pageCount: 100)
        let prideAndPrejudice = Book(name: "Pride And Prejudice", bookType: BookType.romance, pageCount: 200)
        
        
        
        let istanbul = Library(books: [crimeAndPunishment, prideAndPrejudice])
               
        let ofMiceAndMen = Book(name: "Of Mice And Men", bookType: BookType.novel, pageCount: 10)
        let ofMiceAndMen2 = Book(name: "Of Mice And Men2", bookType: BookType.novel, pageCount: 20)
                
        let cansu = Member(name: "CANSU")
                
        istanbul.addBook(book: ofMiceAndMen)
        istanbul.addBook(book: ofMiceAndMen2)
        
        istanbul.beMember(member: cansu)
        
                
        istanbul.borrowBook(book: crimeAndPunishment, member: cansu)
        istanbul.borrowBook(book: prideAndPrejudice, member: cansu)
        istanbul.borrowBook(book: ofMiceAndMen, member: cansu)
        istanbul.borrowBook(book: ofMiceAndMen2, member: cansu)
                
   
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

