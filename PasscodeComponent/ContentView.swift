//
//  ContentView.swift
//  PasscodeComponent
//
//  Created by Yan Moroz on 06.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAuthenticated = false
    
    var body: some View {
        if isAuthenticated {
            VStack {
                Text("You're in!")
                Button("Logout") {
                    isAuthenticated = false
                }
            }
        } else {
            PasscodeView(isAuthenticated: $isAuthenticated)
        }
    }
}

#Preview {
    ContentView()
}
