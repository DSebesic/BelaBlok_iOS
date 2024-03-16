//
//  GameCard.swift
//  BelaBlok
//
//  Created by DSebesic on 16.03.2024..
//

import SwiftUI

public struct GameCard: View {
    let game: GameModel
    public var body: some View {
        HStack {
            Spacer()
            Text("\(game.miPoints)")
            Spacer()
            Text("\(game.viPoints)")
            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .font(.system(size: 40))
    }
}

#Preview {
    GameCard(game: GameModel())
}
