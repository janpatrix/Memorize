//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Abele on 22.09.21.
//

import SwiftUI

struct ContentView: View {
     
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            HStack
            {
                Label(viewModel.theme.name, image: "")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Spacer()
                Label("Points: \(viewModel.points): ", image:"")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach (viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
        
            Button(action: viewModel.newGame) {
                Text("Restart")
                    .foregroundColor(.red)
                    .font(.largeTitle)
            }
            .foregroundColor(.black)
        }
    }
}

struct CardView: View {
    
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let game = EmojiMemoryGame()

        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
