//
//  TaskManager.swift
//  Task
//
//  Created by naresh chouhan on 3/19/25.
//

import Foundation
import CoreData

class TaskManager : ObservableObject {
    let context = PersistenceController.shared.container.viewContext

    func addTask(title:String){
        let newTask = Task(context: context)
        newTask.title = title
        newTask.isCompleted = false
        saveContext()
    }
    
    func deleteTask(_ task: Task) {
            context.delete(task)
            saveContext()
        }
    
    func toggleTaskCompletion(_ task: Task) {
            task.isCompleted.toggle()
            saveContext()
        }
    
    private func saveContext() {
            do {
                try context.save()
            } catch {
                print("Failed to save task: \(error.localizedDescription)")
            }
        }
}
