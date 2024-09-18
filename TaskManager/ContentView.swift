//
//  ContentView.swift
//  TaskManager
//
//  Created by Diana Lim on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: BetterTaskViewModel
    @State private var newTaskName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter new task", text: $newTaskName)
                    .padding()
                Button(action: addNewTask) { // specify actual action of the button
                    Text("Add Task")
                }
                    .padding()
//                    .disabled(newTaskName.isEmpty)
                List($viewModel.tasks) { $task in
                    TaskItemView(viewModel: viewModel, taskId: task.id)
            }
            .navigationBarTitle("TODOs")
            }
        }

    }
    
    private func addNewTask() {
        let newTask = TodoItem(name: newTaskName, isCompleted: false)
        viewModel.addTask(task: newTask)
        newTaskName = ""
    }
    
}


#Preview {
    ContentView(viewModel: TsakViewModel(tasks: []))
}
