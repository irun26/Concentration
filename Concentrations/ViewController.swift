//
//  ViewController.swift
//  Concentrations
//
//  Created by Jimson Vedua on 1/28/18.
//  Copyright © 2018 Jimson Vedua. All rights reserved.
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

    var emojiChoices = ["👻","🎃","👻","🎃"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
                flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }else{
            print("chosen card was not in cardButtons")
        }
    }
    
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
//        flipCard(withEmoji: "🎃", on: sender)
//    }
//
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6300166943, blue: 0.07593753069, alpha: 1)
        }else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    


}

