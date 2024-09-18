//
//  TaskItemView.swift
//  TaskManager
//
//  Created by Diana Lim on 9/17/24.
//

import Foundation
import SwiftUI

struct TaskItemView: View {
//    @Binding var task: TodoItem
    @ObservedObject var viewModel: BetterTaskViewModel
    var taskId: UUID
    var task: TodoItem? {
        viewModel.getTask(id: taskId)
    }
    
    var body: some View {
        HStack {
            Text(task?.name ?? "Task doesn't exist")
//            TextField("Task Name", text: $viewModel.getTask(id: taskId)?.name ?? "Task doesn't exit")
//                .onChange(of: viewModel.draftName) {
//                    viewModel.updateTaskName()
                }
//            Toggle(isOn: $viewModel.task.isCompleted) {
//                EmptyView()
//            }
        }
    }
}
