//
//  ContentView.swift
//  eggplant-brownie
//
//  Created by user228370 on 11/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var buttonText: String = "Login"
    @State private var showGreeting: Bool = false
    
    var body: some View {
        VStack() {
            if !showGreeting {
                TextField("Enter your username", text: $username).padding(.horizontal, 16)
                TextField("Enter your password", text: $password).padding(.horizontal, 16)
                Button(buttonText) {
                    showGreeting.toggle()
                    buttonText = "Logout"
                }
            } else {
                Text("Hello, \(username)!")
                Button(buttonText) {
                    showGreeting.toggle()
                    buttonText = "Login"
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
