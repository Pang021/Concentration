//
//  Concentration.swift
//  Concentration
//
//  Created by pangthunyalak on 20/3/2562 BE.
//  Copyright © 2562 pangthunyalak. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil    // not one and only ...
            } else {
                // either no card or two cards face up
                for flipdownIndex in cards.indices {
                    cards[flipdownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    init(numberOfPairOfCards: Int) {
    
        for identifier in 1...numberOfPairOfCards {
            let card = Card()
            cards += [card, card]
        }
        
    }
}
