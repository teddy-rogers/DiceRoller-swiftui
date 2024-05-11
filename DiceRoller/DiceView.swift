//
//  DiceView.swift
//  DiceRoller
//
//  Created by Teddy on 11/05/2024.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth:100, maxHeight:100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .padding(.top)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
