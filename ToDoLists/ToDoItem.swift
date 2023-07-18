//
//  ToDoItem.swift
//  ToDoLists
//
//  Created by Hillary Trinh on 2023-07-18.
//

import Foundation

class ToDoItem: Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

