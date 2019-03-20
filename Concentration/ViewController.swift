//
//  ViewController.swift
//  Concentration
//
//  Created by pangthunyalak on 19/3/2562 BE.
//  Copyright © 2562 pangthunyalak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
   
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎅","🐼","🦋","🍉"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = .orange
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = .white
        }
    }
}

