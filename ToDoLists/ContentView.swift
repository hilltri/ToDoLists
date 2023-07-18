//
//  ContentView.swift
//  ToDoLists
//
//  Created by Hillary Trinh on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
   
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false

    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
                
                Spacer()
                
            }
            .padding()
        }
        .padding()
        
        List {
            ForEach (toDoItems) { toDoItem in
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
            }
        }
        .listStyle(.plain)
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
