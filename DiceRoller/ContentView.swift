//
//  ContentView.swift
//  DiceRoller
//
//  Created by Teddy on 11/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            HStack {
                ForEach(1...numberOfDice, id: \.description) {_ in
                    DiceView()
                }
            }
            HStack(spacing:30) {
                Button("Remove dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                Button("Add dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
