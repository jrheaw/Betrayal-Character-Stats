//
//  CharacterStat.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/12/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation

class CharacterStat {
    enum StatType : CustomStringConvertible {
        case speed, might, sanity, knowledge
        var description : String {
            get {
                switch(self) {
                case speed:
                    return "speed"
                case might:
                    return "might"
                case sanity:
                    return "sanity"
                case knowledge:
                    return "knowledge"
                }
            }
        }
    }
    
    var statType: StatType
    var valuesArray = []
    var currentValueIndex: Int
    var defaultIndex: Int

    init(statType: StatType, startingIndex: Int, defaultIndex: Int, values: [Int]) {
        self.statType = statType
        self.valuesArray = values
        self.currentValueIndex = startingIndex
        self.defaultIndex = defaultIndex
    }
    
    func getCurrentIndex() -> Int {
        return currentValueIndex
    }
    
    func incrementCurrentIndex() {
        currentValueIndex += 1
    }
    
    func decrementCurrentIndex() {
        currentValueIndex -= 1
    }
}