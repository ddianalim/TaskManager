//
//  TaskViewModel.swift
//  TaskManager
//
//  Created by Diana Lim on 9/17/24.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var task: TodoItem
    @Published var draftName: String
    
    init(task: TodoItem) {
        self.task = task
        self.draftName = task.name
    }
    
    func updateTaskName() { // updates task name
        task.name = draftName
    }
    
    func toggleCompletion() { // toggles task completion status
        task.isCompleted.toggle()
    }
}
