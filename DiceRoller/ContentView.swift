//
//  ContentView.swift
//  DiceRoller
//
//  Created by Pongpat Weesommai on 6/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps().bold())
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 3)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
