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
            Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps().bold()).foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .symbolRenderingMode(.multicolor)
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .symbolRenderingMode(.multicolor)
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
