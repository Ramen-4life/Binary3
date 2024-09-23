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
            VStack {
                Text("Hexadecimal Converter")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Divider()
                HStack {
                    Text("Enter Hexadecimal:")
                    TextField("Enter Hexadeciaml", text: $hexadecimal)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        hexadecimalConv = Int(hexadecimal, radix: 16)!
                    }, label: {
                        Text("Convert decimal")
                    })
                }
                Text("\(hexadecimal) in decimal is: \(hexadecimalConv)")
                Divider()
                HStack {
                    Text("Enter Number:")
                    TextField("", value: $number, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button(action: {
                        numberConv = String(number, radix: 16)
                    }, label: {
                        Text("Convert to Hexadecimal")
                    })
                }
                Text("\(number) in hexadecimal is: \(numberConv.capitalized)")
                Divider()
            }
            .padding()
        }
    }
