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
    
    enum CharacterType: Int, Printable {
        case Jock = 0, FinalGirl, Professor, FortuneTeller, LittleGirl, CuriousBoy
        var description : String {
            get {
                switch(self) {
                case Jock:
                    return "Jock"
                case FinalGirl:
                    return "FinalGirl"
                case Professor:
                    return "return"
                case FortuneTeller:
                    return "FortuneTeller"
                case LittleGirl:
                    return "LittleGirl"
                case CuriousBoy:
                    return "CuriousBoy"

                }
            }
        }
    }
    
    var sideA: Character?
    var sideB: Character?
    var aSelected = true
    var icon: UIImage?
    var characterType: CharacterType?
    
    var backgroundColor: UIColor = UIColor.clearColor()
    
    var userDefaults = NSUserDefaults.standardUserDefaults()
    
    init(index: Int) {
        if let characterTypeFromIndex = CharacterType(rawValue: index) {
            characterType = characterTypeFromIndex
            let characterDataInstance = CharacterData()
            let characterData: [String:Any] = characterDataInstance.characterDataFromCharacterType(characterTypeFromIndex)
            
            if let aSelectedStored:Bool = userDefaults.valueForKey("\(characterType!).aSelected") as? Bool {
                aSelected = aSelectedStored
            }
            
            let iconName = characterData["icon"] as! String!
            icon = UIImage(named: iconName)
            
            let backgroundColorDictionary = characterData["backgroundColor"]! as! [String:Double]
            backgroundColor = colorFromDictionary(backgroundColorDictionary)
            
            let characterStats:[String:[String:[String:Any]]] = characterDataInstance.characterStatsFromCharacterType(characterTypeFromIndex)
            sideA = Character(characterData:characterData["a"]! as! [String:String], characterStats: characterStats["a"]! as [String:[String:Any]])
            sideB = Character(characterData:characterData["b"]! as! [String:String], characterStats: characterStats["b"]! as [String:[String:Any]])
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
        userDefaults.setBool(aSelected, forKey: "\(characterType!).aSelected")
    }
    
    func getSelectedCharacter() -> Character? {
        return aSelected ? sideA : sideB
    }
    
}
