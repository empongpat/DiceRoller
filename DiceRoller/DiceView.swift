//
//  DiceView.swift
//  DiceRoller
//
//  Created by Pongpat Weesommai on 6/4/25.
//

import SwiftUI

struct DiceView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
            .resizable()
            .frame(width: 100, height: 100)
    }
}

#Preview {
    DiceView()
}
