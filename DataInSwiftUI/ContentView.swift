//
//  ContentView.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 11.06.2023.
//

import SwiftUI

struct ContentView: View {
@State var name = "Silas Hayri"

    var body: some View {
        VStack {

            Text(name)
                .font(.largeTitle)
                .padding()
            Button(action: {
                name = "Gebeş Kaplumbağa"

            }, label: {
Text("Change the Name")
            })
            TextField("Please insert the text", text: self.$name)
                .frame(width: UIScreen.main.bounds.width*0.7, height: 20, alignment: .center)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
