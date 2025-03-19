//
//  ContentView.swift
//  Task
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @StateObject private var taskManager = TaskManager()
    @State private var newTaskTitle = ""

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Task.title, ascending: true)],
        animation: .default)
    private var taks: FetchedResults<Task>

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter new task", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                        Button(action: {
                            guard !newTaskTitle.isEmpty else { return }
                            taskManager.addTask(title: newTaskTitle)
                                newTaskTitle = "" // Clear input field
                                   }) {
                            Image(systemName: "plus.circle.fill")
                                           .font(.largeTitle)
                                           .foregroundColor(.blue)
                                   }
                               }
                               .padding()
                
                List{
                    ForEach(taks) { task in
                        HStack {
                            Text(task.title ?? "Untitled Task")
                                    .strikethrough(task.isCompleted, color: .gray)
                            Spacer()
                            Button(action: {
                                                            taskManager.toggleTaskCompletion(task)
                                                        }) {
                                                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                                                .foregroundColor(task.isCompleted ? .green : .gray)
                                                        }
                        }
                    }
                    .onDelete(perform: deleteTask)
                }
                
            }
            
        }
        .navigationTitle("Tasks")
                    .toolbar {
                        EditButton()
                    }
    }
    // Delete a task
        private func deleteTask(offsets: IndexSet) {
            offsets.forEach { index in
                taskManager.deleteTask(taks[index])
            }
        }
    
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
