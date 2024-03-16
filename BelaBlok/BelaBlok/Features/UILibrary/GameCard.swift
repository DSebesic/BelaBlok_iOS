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
            Text("\(game.miPoints)")
            Text("v")
            Text("\(game.viPoints)")
        }
    }
}

#Preview {
    GameCard(game: GameModel())
}
