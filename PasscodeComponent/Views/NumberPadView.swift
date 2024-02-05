//
//  NumberPadView.swift
//  PasscodeComponent
//
//  Created by Yan Moroz on 06.02.2024.
//

import SwiftUI

struct NumberPadView: View {
    
    @Binding var passcode: String
    
    let columns: [GridItem] = [
        .init(),
        .init(),
        .init()
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(1...9, id: \.self) { number in
                Button {
                    addValue(number)
                } label: {
                    Text("\(number)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                }
            }
            
            Button {
                removeValue()
            } label: {
                Image(systemName: "delete.backward")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
            }
            
            Button {
                addValue(0)
            } label: {
                Text("0")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
            }
        }
        .foregroundStyle(.primary)
    }
    
    private func addValue(_ value: Int) {
        if passcode.count < 4 {
            passcode += "\(value)"
        }
    }
    
    private func removeValue() {
        if !passcode.isEmpty {
            passcode.removeLast()
        }
    }
}

#Preview {
    NumberPadView(passcode: .constant(""))
}
