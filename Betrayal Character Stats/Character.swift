//
//  Character.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation
import UIKit

class Character {

    var speed: CharacterStat
    var might: CharacterStat
    var sanity: CharacterStat
    var knowledge: CharacterStat
    
    var name: String
    var info: String
    var icon: UIImage?
    
    init(characterData: [String:String], characterStats: [String:[String:Any]]) {
        self.name = characterData["name"]!
        self.info = characterData["info"]!
        let iconName = characterData["icon"] as String!
        icon = UIImage(named: iconName)
        
        var speed = characterStats["speed"]! as [String:Any]
        var speedStartIndex = speed["startingIndex"]! as Int
        var speedArray = speed["valuesArray"]! as [Int]
        self.speed = CharacterStat(statType: CharacterStat.StatType.speed, startingIndex: speedStartIndex, values: speedArray)
        
        var might = characterStats["might"]! as [String:Any]
        var mightStartIndex = might["startingIndex"]! as Int
        var mightArray = might["valuesArray"]! as [Int]
        self.might = CharacterStat(statType: CharacterStat.StatType.might, startingIndex: mightStartIndex, values: mightArray)
        
        var sanity = characterStats["sanity"]! as [String:Any]
        var sanityStartIndex = sanity["startingIndex"]! as Int
        var sanityArray = sanity["valuesArray"]! as [Int]
        self.sanity = CharacterStat(statType: CharacterStat.StatType.sanity, startingIndex: sanityStartIndex, values: sanityArray)
        
        var knowledge = characterStats["knowledge"]! as [String:Any]
        var knowledgeStartIndex = knowledge["startingIndex"]! as Int
        var knowledgeArray = knowledge["valuesArray"]! as [Int]
        self.knowledge = CharacterStat(statType: CharacterStat.StatType.knowledge, startingIndex: knowledgeStartIndex, values: knowledgeArray)
    }

}