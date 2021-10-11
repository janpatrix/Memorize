//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Patrick Abele on 24.09.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private(set) var model: MemoryGame<String>

    var theme = themes.randomElement()!
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        let emojis = theme.emojis.shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: theme.numberOfPairs ?? Int.random(in: 6...emojis.count)) { index in return emojis[index]
        }
    }
        
    init(){
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    var points: Int {
        return model.returnPoints()
    }

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func newGame(){
        theme = themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
}

