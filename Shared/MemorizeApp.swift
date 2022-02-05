//
//  MemorizeApp.swift
//  Shared
//
//  Created by Geoffrey Johnson on 7/10/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            MemorizeView(game: game)
        }
    }
}
