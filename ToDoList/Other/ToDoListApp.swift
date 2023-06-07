//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Martin on 2023/06/06.
//

import SwiftUI
import Firebase

@main
struct ToDoList: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
