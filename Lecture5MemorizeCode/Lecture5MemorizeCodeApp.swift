//
//  Lecture4MemorizeApp.swift
//  Lecture4Memorize
//
//  Created by Guo Chen on 10/14/22.
//

import SwiftUI

@main
struct Lecture5MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
