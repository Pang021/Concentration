//
//  Card.swift
//  Concentration
//
//  Created by pangthunyalak on 20/3/2562 BE.
//  Copyright © 2562 pangthunyalak. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
    identifierFactory += 1
    return identifierFactory
        
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
