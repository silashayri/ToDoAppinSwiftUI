//
//  DoneButton.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 13.06.2023.
//

import SwiftUI

struct DoneButton: View {
    @Binding var doneUndone: Bool
    var body: some View {
        Button(action: {
            self.doneUndone.toggle()

        }, label: {
            Text("Done/Undone")
                .font(.title)
                .padding()
        })
    }
}
