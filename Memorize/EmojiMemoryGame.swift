//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Patrick Abele on 24.09.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["πΆ", "π±", "π­", "πΉ", "π°", "π¦", "π»", "πΌ", "π»ββοΈ", "π", "π", "π", "π", "π", "π", "π", "π", "π", "β½οΈ", "π", "π", "βΎοΈ", "π₯", "πΎ", "π", "π", "π₯"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4)
        { pairIndex in emojis[pairIndex]
        }
    }
    
    @Published private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

