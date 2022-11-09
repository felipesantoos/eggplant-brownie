//
//  ContentView.swift
//  eggplant-brownie
//
//  Created by user228370 on 11/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var foodName: String = ""
    @State private var happinessLevel: String = ""

    var body: some View {
        VStack() {
            HStack(alignment: .center, spacing: 8.0) {
                Text("Food name:")
                TextField("Ex.: apple", text: $foodName)
            }
            .padding(.horizontal, 32.0)
            HStack(alignment: .center, spacing: 8.0) {
                Text("Happiness level:")
                TextField("1 (sad) - 5 (very happy)", text: $happinessLevel)
            }
            .padding(.horizontal, 32.0)
            .keyboardType(.numberPad)
            Button("Submit evaluation") {
                print("Evaluation sended!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
