//
//  CharacterCard.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/12/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation
import UIKit

class CharacterCard {
    
    enum CharacterType: Int {
        case Jock = 0, FinalGirl, Professor, FortuneTeller, LittleGirl, CuriousBoy
    }
    
    let sideA: Character?
    let sideB: Character?
    var aSelected = true
    
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        if let characterType = CharacterType(rawValue: index) {
            let characterDataInstance = CharacterData()
            let characterData: [String:Any] = characterDataInstance.characterDataFromCharacterType(characterType)
            
            let backgroundColorDictionary = characterData["backgroundColor"]! as [String:Double]
            backgroundColor = colorFromDictionary(backgroundColorDictionary)
            
            let characterStats:[String:[String:[String:Any]]] = characterDataInstance.characterStatsFromCharacterType(characterType)
            sideA = Character(characterData:characterData["a"]! as [String:String], characterStats: characterStats["a"]! as [String:[String:Any]])
            sideB = Character(characterData:characterData["b"]! as [String:String], characterStats: characterStats["b"]! as [String:[String:Any]])
        }
    }
    
    func colorFromDictionary(colorDictionary: [String:Double]) -> UIColor {
        let red: CGFloat = CGFloat(colorDictionary["red"]!)
        let green: CGFloat = CGFloat(colorDictionary["green"]!)
        let blue: CGFloat = CGFloat(colorDictionary["blue"]!)
        let alpha: CGFloat = CGFloat(colorDictionary["alpha"]!)
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    func flipCard() {
        aSelected = !aSelected
    }
    
    func getSelectedCharacter() -> Character? {
        return aSelected ? sideA : sideB
    }
    
}
