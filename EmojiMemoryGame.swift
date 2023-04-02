//
//  EmojiMemoryGame.swift
//  memory
//
//  Created by manbir rakhra on 26/3/2023.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["😀", "😂", "😟", "🥶", "😱", "🫡", "🐱", "🐰", "🕸️", "🐜", "🐗", "🥑", "🍎", "🍌", "🍐"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    func choose(_ card: Card)
    {
        model.choose(card)
    }
}

struct Previews_EmojiMemoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
