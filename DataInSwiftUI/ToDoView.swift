//
//  ToDoView.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 13.06.2023.
//

import SwiftUI

struct ToDoView: View {
    var body: some View {
        NavigationView{
            List(todoList) { todos in
                NavigationLink(destination: DetailsView(choosenTodo: todos),
                               label: {
                    Text(todos.name)
                    
                })
            }.navigationTitle(Text("Todos"))

        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
