//
//  ContentView.swift
//  Binary
//
//  Created by Quincy Alex on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var binary = ""
    @State var binaryConv = 0
    @State var number = 0
    @State var numberConv = ""
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Hexadecimal Converter ->") {
                    Hexadecimal()
                }
                .font(.title)
                Divider()
                HStack {
                    Text("Enter Binary:")
                    TextField("", text: $binary)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        binaryConv = Int(binary, radix: 2)!
                    }, label: {
                        Text("Convert to decimal")
                    })
                }
                Text("\(binary) in decimal is: \(binaryConv)")
                Divider()
                HStack {
                    Text("Enter number:")
                    TextField("", value: $number, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        numberConv = String(number, radix: 2)
                    }, label: {
                        Text("Convert to binary")
                    })
                }
                Text("\(number) in binary is: \(numberConv)")
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
