//
//  FirstView.swift
//  DataInSwiftUI
//
//  Created by Silas Hayri on 12.06.2023.
//

import SwiftUI

struct FirstView: View {
    @State var number = 0
    @State var isPresentedView = false
    var body: some View {
        VStack{

            HStack{
                Button(action: {

                    self.number -= 1

                }, label: {

                    Text("-")
                        .font(.largeTitle)

                })

                Text(String(number))
                    .font(.largeTitle)
                Button(action: {
                    self.number += 1

                }, label: {
                    Text("+")
                        .font(.largeTitle)

                })
            }
            Button(action: {
                self.isPresentedView.toggle()
            }, label: {

                Text("Second View")
                    .font(.largeTitle)

            })
            .padding()
            .sheet(isPresented:self.$isPresentedView, content:{ SecondView()
            })

        }

    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
