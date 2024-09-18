//
//  TodoItem.swift
//  TaskManager
//
//  Created by Diana Lim on 9/17/24.
//

import Foundation

struct TodoItem: Identifiable {
    var id = UUID()
    var name: String
    var isCompleted: Bool
}
