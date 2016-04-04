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

    var speed: CharacterStat?
    var might: CharacterStat?
    var sanity: CharacterStat?
    var knowledge: CharacterStat?
    
    var name: String
    var info: String
    var icon: UIImage?
    
    var userDefaults = NSUserDefaults.standardUserDefaults()
    
    init(characterData: [String:String], characterStats: [String:[String:Any]]) {
        self.name = characterData["name"]!
        self.info = characterData["info"]!
        let iconName = characterData["icon"] as String!
        icon = UIImage(named: iconName)
        
        var speed = characterStats["speed"]! as [String:Any]
        let speedStartIndex = getStartingIndex(.speed, stats: speed)
        let speedArray = speed["valuesArray"]! as! [Int]
        self.speed = CharacterStat(statType: .speed, startingIndex: speedStartIndex, defaultIndex: getDefaultIndexOfStats(speed), values: speedArray)
        
        var might = characterStats["might"]! as [String:Any]
        let mightStartIndex = getStartingIndex(.might, stats: might)
        let mightArray = might["valuesArray"]! as! [Int]
        self.might = CharacterStat(statType: .might, startingIndex: mightStartIndex, defaultIndex: getDefaultIndexOfStats(might), values: mightArray)
        
        var sanity = characterStats["sanity"]! as [String:Any]
        let sanityStartIndex = getStartingIndex(.sanity, stats: sanity)
        let sanityArray = sanity["valuesArray"]! as! [Int]
        self.sanity = CharacterStat(statType: .sanity, startingIndex: sanityStartIndex, defaultIndex: getDefaultIndexOfStats(sanity), values: sanityArray)
        
        var knowledge = characterStats["knowledge"]! as [String:Any]
        let knowledgeStartIndex = getStartingIndex(.knowledge, stats: knowledge)
        let knowledgeArray = knowledge["valuesArray"]! as! [Int]
        self.knowledge = CharacterStat(statType: .knowledge, startingIndex: knowledgeStartIndex, defaultIndex: getDefaultIndexOfStats(knowledge), values: knowledgeArray)
    }
    
    func updateCharacterStatIndex(type: CharacterStat.StatType, index: Int) {
        userDefaults.setInteger(index, forKey: "\(name).\(type)")
        switch(type) {
        case .might:
            might!.currentValueIndex = index
        case .knowledge:
            knowledge!.currentValueIndex = index
        case .speed:
            speed!.currentValueIndex = index
        case .sanity:
            sanity!.currentValueIndex = index
        }
    }
    
    private func getStartingIndex(type: CharacterStat.StatType, stats: [String:Any]) -> Int {
        if let savedIndex:Int = userDefaults.valueForKey("\(name).\(type)") as? Int {
            return savedIndex
        } else {
            return stats["startingIndex"]! as! Int
        }
    }
    
    private func getDefaultIndexOfStats(stats: [String:Any]) -> Int {
        return stats["startingIndex"]! as! Int
    }

}