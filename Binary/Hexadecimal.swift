//
//  Hexadecimal.swift
//  Binary
//
//  Created by Quincy Alex on 9/17/24.
//

import Foundation
import SwiftUI

struct Hexadecimal: View {
    @State var hexadecimal = ""
    @State var hexadecimalConv = 0
    @State var number = 0
    @State var numberConv = ""
    var body: some View {
        NavigationStack {
            NavigationLink(" <- Binary Converter") {
                ContentView()
            }
            .font(.title)
            Divider()
            VStack {
                HStack {
                    Text("Enter Hexadecimal:")
                    TextField("Enter Hexadeciaml", text: $hexadecimal)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        
                    }, label: {
                        Text("Convert to base 10")
                    })
                }
                Text("\(hexadecimal) in base 10 is: \(hexadecimalConv)")
                Divider()
                HStack {
                    Text("Enter Number:")
                    TextField("", value: $number, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        
                    }, label: {
                        Text("Convert to Hexadecimal")
                    })
                }
                Text("\(number) in hexadecimal is: \(numberConv)")
            }
            .padding()
        }
    }
}
