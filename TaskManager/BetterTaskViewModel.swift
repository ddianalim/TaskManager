//
//  BetterTaskViewModel.swift
//  TaskManager
//
//  Created by Diana Lim on 9/17/24.
//

import Foundation

class BetterTaskViewModel: ObservableObject {
    @Published var tasks: [TodoItem]
    
    init(tasks: [TodoItem]) {
        self.tasks = tasks
    }
    
    func toggleCompleted(id: UUID) {
        self.tasks = self.tasks.map {
            var newTask = $0 // shorthand for "argument 0"
            if newTask.id == id {
                newTask.isCompleted.toggle()
            }
            return newTask
        }
    }
    
    func getTask(id: UUID) -> TodoItem? { // function returns optional todoitem because we don't know if it actually exists
        return self.tasks.first { $0.id == id } // inline function
        
        // this is the same syntax
//        func temp (task: TodoItem) -> Bool {
//            return task.id == id
//        }
//        return self.tasks.first (where: temp)

    }
}
