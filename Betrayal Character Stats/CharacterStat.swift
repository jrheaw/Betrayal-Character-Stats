//
//  CharacterStat.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/12/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation

class CharacterStat {
    enum StatType {
        case speed, might, sanity, knowledge
    }
    
    var statType: StatType
    var valuesArray = []
    var currentValueIndex: Int

    init(statType: StatType, startingIndex: Int, values: [Int]) {
        self.statType = statType
        self.valuesArray = values;
        self.currentValueIndex = startingIndex
    }
    
    func getCurrentIndex() -> Int {
        return currentValueIndex
    }
    
    func incrementCurrentIndex() {
        currentValueIndex++
    }
    
    func decrementCurrentIndex() {
        currentValueIndex--
    }
}