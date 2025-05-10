//
//  ContentView.swift
//  DiceRoller
//
//  Created by Pongpat Weesommai on 6/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps().bold())
            
            HStack {
                ForEach(1...3, id: \.description) { _ in
                    DiceView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
