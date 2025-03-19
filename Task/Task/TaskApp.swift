//
//  TaskApp.swift
//  Task
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

@main
struct TaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
