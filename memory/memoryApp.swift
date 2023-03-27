//
//  memoryApp.swift
//  memory
//
//  Created by manbir rakhra on 25/3/2023.
//

import SwiftUI

@main
struct memoryApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
