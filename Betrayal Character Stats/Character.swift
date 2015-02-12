//
//  Character.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation
import UIKit

struct Character {
    enum CharacterType: Int {
        case Jock = 0, FinalGirl, Professor, FortuneTeller, LittleGirl, CuriousBoy
    }
    var aStats: [String:String] = [:]
    var bStats: [String:String] = [:]
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        if let characterType = CharacterType(rawValue: index) {
            let characterData = CharacterData().characterDataFromCharacterType(characterType)
            let backgroundColorDictionary = characterData["backgroundColor"]!
            backgroundColor = colorFromDictionary(backgroundColorDictionary)
        }
    }
    
    func colorFromDictionary(colorDictionary: [String:String]) -> UIColor {
        var redString: String = colorDictionary["red"]!
        let red: CGFloat = CGFloat(redString.toInt()!)
        var greenString: String = colorDictionary["green"]!
        let green: CGFloat = CGFloat(greenString.toInt()!)
        var blueString: String = colorDictionary["blue"]!
        let blue: CGFloat = CGFloat(blueString.toInt()!)
        var alphaString: String = colorDictionary["alpha"]!
//        let alpha: CGFloat = CGFloat(alphaString.toInt()!)
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
}