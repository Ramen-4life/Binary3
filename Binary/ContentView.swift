//
//  ContentView.swift
//  Binary
//
//  Created by Quincy Alex on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var binary: Int = 0
    @State var binaryConv = 0
    @State var number = 0
    @State var numberConv = 0
    var body: some View {
        VStack {
            HStack {
                Text("Enter Binary:")
                TextField("", value: $binary, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button(action: {
                    
                }, label: {
                    Text("Convert to base 10")
                })
            }
            Text("\(binary) in base 10 is: \(binaryConv)")
            Divider()
            HStack {
                Text("Enter number:")
                TextField("", value: $number, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button(action: {
                    
                }, label: {
                    Text("Convert to binary")
                })
            }
            Text("\(number) in binary is: \(numberConv)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
