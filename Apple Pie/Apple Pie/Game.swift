//
//  Game.swift
//  Apple Pie
//
//  Created by GEU on 31/10/25.
//

import Foundation

struct Game{
    var word:String
    var incorrectMovesRemaining:Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining-=1
        }
    }
}

