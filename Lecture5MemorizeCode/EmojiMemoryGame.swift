//
//  EmojiMemoryGame.swift
//  Lecture4Memorize
//
//  Created by Guo Chen on 10/14/22.

import SwiftUI
//
// MVVM Step 1
// ObservableObject protocol lets the object(viewnModel in this case) publish
// to the world that its Model has changed
class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    // each Model-View creates its own Model
    @Published private var model = createMemoryGame()
    
    
    typealias Card = MemoryGame<String>.Card
    
    // and declare its own var for parts that need to be available
    var cards: [Card] {
        return model.cards
    }
    
    // put functions that show user intent in the viewModel
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}

