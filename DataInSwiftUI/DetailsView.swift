//
//  DetailsView.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 13.06.2023.
//

import SwiftUI

struct DetailsView: View {
    var choosenTodo: ToDoModel
    @State var doneColor = false

    var body: some View {
        VStack{
            Text(choosenTodo.name)
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundColor(self.doneColor ? .green : .red)
            Text(choosenTodo.definition)
                .font(.title)
                .italic()
          DoneButton(doneUndone: $doneColor)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenTodo: firstToDo)
    }
}
