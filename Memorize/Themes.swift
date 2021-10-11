//
//  Themes.swift
//  Memorize
//
//  Created by Patrick Abele on 03.10.21.
//

import Foundation
import SwiftUI

// Add the formal concept of a “Theme” to your Model. A Theme consists of a name for the theme, a set of emoji to use, a number of pairs of cards to show, and an appropriate color to use to draw the cards.

struct Theme {
    var name: String
    var emojis: Array<String>
    var color: Color
    var accentColor: Color
    var numberOfPairs: Int?
}

let themes: [Theme] = [
    Theme(
        name: "Halloween",
        emojis: ["👻","🎃","🕷","🧟‍♂️","🧛🏼‍♀️","☠️","👽","🦹‍♀️","🦇","🌘","⚰️","🔮"],
        color: .orange,
        accentColor: .red,
        numberOfPairs: 10),
                 // No number of pairs for first theme as per requirements
    Theme(
        name: "Flags",
        emojis: ["🇸🇬","🇯🇵","🏴‍☠️","🏳️‍🌈","🇬🇧","🇹🇼","🇺🇸","🇦🇶","🇰🇵","🇭🇰","🇲🇨","🇼🇸"],
        color: .red,
        accentColor: .blue,
        numberOfPairs: 10),
    Theme(
            name: "Animals",
            emojis: ["🦑","🦧","🦃","🦚","🐫","🦉","🦕","🦥","🐸","🐼","🐺","🦈"],
            color: .green,
            accentColor: .yellow),
        Theme(
            name: "Places",
            emojis: ["🗽","🗿","🗼","🎢","🌋","🏝","🏜","⛩","🕍","🕋","🏯","🏟"],
            color: .blue,
            accentColor: .green),
        Theme(
            name: "Sports",
            emojis: ["🤺","🏑","⛷","⚽️","🏀","🪂","🥏","⛳️","🛹","🎣","🏉","🏓"],
            color: .orange,
            accentColor: .purple),
        Theme(
            name: "Foods",
            emojis: ["🌮","🍕","🍝","🍱","🍪","🍩","🥨","🥖","🍟","🍙","🍢","🍿"],
            color: .yellow,
            accentColor: .red)
]
