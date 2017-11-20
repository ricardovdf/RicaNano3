//
//  FrancescoData.swift
//  RicaNano3
//
//  Created by Ricardo V Del Frari on 20/11/2017.
//  Copyright © 2017 Ricardo V Del Frari. All rights reserved.
//

import Foundation

struct FrancescoData {
    
    var testEmojis = [Emoji(emoji: "😀", sentences: ["I am Francesco!", "I am Francesco!", "I am Francesco!", "Hello, I am Francesco", "I am Francesco, you know that..", "Francesco?", "Hello", "Hey"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "I have a dog named Teti", "I have a Poodle", "My dog is black"]), Emoji(emoji: "🏎", sentences: ["Go Vettel!", "I ❤️ F1", "#svettel", "#scuderiaferrari"]),  Emoji(emoji: "🇮🇹", sentences: ["I am Italian", "Naples is my city"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "My dog is called Pepe"])]
    
    var importantDates : [DateMDY] = [DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉"),DateMDY(month: "OCT", day: 30, year: 1988, event: "My Birthday! 🎉")]
    
    struct DateMDY {
        var month: String
        var day: Int
        var year: Int
        var event: String
    }
    
    struct Emoji {
        var emoji: String
        var sentences: [String]
    }

}
