//
//  Game.swift
//  Apple Pie
//
//  Created by Maahd Shahzad on 4/14/19.
//  Copyright © 2019 Maahd Shahzad. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
