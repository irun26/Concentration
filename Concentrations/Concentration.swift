//
//  Concentration.swift
//  Concentrations
//
//  Created by Jimson Vedua on 1/28/18.
//  Copyright © 2018 Jimson Vedua. All rights reserved.
//

import Foundation

class Concentration{

    var cards = [Card]()
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp{
            cards[index].isFaceUp = false
            
        }else {
            cards[index].isFaceUp = true
        }
        
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards
        {
            let card = Card()
            cards += [card, card]
        }
        
        // todo: shuffle
    }
    
}





