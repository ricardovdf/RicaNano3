//
//  FrancescoData.swift
//  RicaNano3
//
//  Created by Ricardo V Del Frari on 20/11/2017.
//  Copyright © 2017 Ricardo V Del Frari. All rights reserved.
//

import Foundation
import UIKit

struct FrancescoData {
    
    //Singleton?
    static let shared = FrancescoData()
    
    var francescoPhotos = [#imageLiteral(resourceName: "Francesco 01"),#imageLiteral(resourceName: "Francesco 02"),#imageLiteral(resourceName: "Francesco 03"),#imageLiteral(resourceName: "Francesco 04"),#imageLiteral(resourceName: "Francesco 05"),#imageLiteral(resourceName: "Francesco 06"),#imageLiteral(resourceName: "Francesco 07"),#imageLiteral(resourceName: "Francesco 08"),#imageLiteral(resourceName: "Francesco 09"),#imageLiteral(resourceName: "Francesco 10"),#imageLiteral(resourceName: "Francesco 11"),#imageLiteral(resourceName: "Francesco 12"),#imageLiteral(resourceName: "Francesco 13")]
    
    var testEmojis = [Emoji(emoji: "😀", sentences: ["I am Francesco D'Angelo!", "I am Francesco!", "I am Francesco!", "Hello, I am Francesco", "I am Francesco, you know that..", "Francesco D'Angelo?"]), Emoji(emoji: "🐶", sentences: ["I love my dog!", "I have a dog, Katie", "I have a Poodle", "My dog is black"]), Emoji(emoji: "🏎", sentences: ["Go Vettel!", "I ❤️ F1", "#svettel", "#scuderiaferrari", "Sebastian Vettel rules!"]),  Emoji(emoji: "🇮🇹", sentences: ["I am Italian", "I was born in Naples", "I live in Frattamaggiore"]), Emoji(emoji: "🏀", sentences: ["I used to be a basket player", "I enjoy watching basket", "I broke my knee and stopped playing basket"]), Emoji(emoji: "🎧", sentences: ["Caparezza is my favorite singer", "I listen a lot of music", "I don’t like disco"]), Emoji(emoji: "🍕", sentences: ["Pizza, pizza, pizza!", "#Mozzarella", "Where is my Pasta?", "Someone said pizza?"]), Emoji(emoji: "🤓", sentences: ["I am an Computer Engineering student", "I study at SUN University", "I study at Second University of Naples", "010011001"]), Emoji(emoji: "👨‍💻", sentences: ["I know C++", "Java coder", "Matlab!", "Assembly 8086", "00101010"]), Emoji(emoji: "🖊", sentences: ["I love Pens!", "I like stationary things!", "Do you have a pen?", "I have many pens"]), Emoji(emoji: "🖖", sentences: ["Star Wars fan", "The Force will be with you. Always", "Unfortunally, I am no Jedi"]), Emoji(emoji: "🎮", sentences: ["PS4 > Xbox", "Let's play Fifa", "Wait, I am playing The Last of Us"])]
    
    var importantDates : [DateMDY] = [DateMDY(month: "JUL", day: 3, year: 1987, event: "Sebastian Vettel was born on this day 🏆"), DateMDY(month: "SET", day: 14, year: 1995, event: "I was born on this day 🎉"), DateMDY(month: "OCT", day: 19, year: 2002, event: "Played some Basketball"), DateMDY(month: "NOV", day: 25, year: 2010, event: "I saw Vettel winning the F1 championship"), DateMDY(month: "APR", day: 25, year: 2012, event: "I Went to Pisa"), DateMDY(month: "SET", day: 26, year: 2013, event: "Started my course at SUN"), DateMDY(month: "SET", day: 14, year: 2013, event: "18 years old! 👨🏻"), DateMDY(month: "MAR", day: 7, year: 2016, event: "Broke up with my girlfriend"),DateMDY(month: "AGO", day: 10, year: 2016, event: "I Went to Sziget Festival 🎵"), DateMDY(month: "SET", day: 28, year: 2016, event: "Broke my Knee"), DateMDY(month: "OCT", day: 16, year: 2017, event: "First day at Apple Academy!")]
    
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
