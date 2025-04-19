//
//  DiceView.swift
//  DiceRoller
//
//  Created by Pongpat Weesommai on 6/4/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(width: 100, height: 100)
            Button("Roll") {
                numberOfPips = Int.random(in: 1...6)
            }
        }
    }
}

#Preview {
    DiceView()
}
