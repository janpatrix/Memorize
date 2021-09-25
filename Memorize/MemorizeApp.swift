//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Patrick Abele on 22.09.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
