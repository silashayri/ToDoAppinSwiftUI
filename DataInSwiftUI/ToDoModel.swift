//
//  ToDoModel.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 13.06.2023.
//

import Foundation
struct ToDoModel: Identifiable{

    var id = UUID()
    var name: String
    var definition: String
}

var firstToDo = ToDoModel(name: "Et Al", definition: "Eve dönerken")
var secondToDo = ToDoModel(name: "Sebze Al", definition: "işe giderken")
var thirdToDo = ToDoModel(name: "kahve Al", definition: "işten dönerken")

var todoList = [firstToDo,secondToDo,thirdToDo]

