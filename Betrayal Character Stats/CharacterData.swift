//
//  CharacterData.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation

struct CharacterData {
    let jock = [ 
        "a":[
            "name":"Ox Bellows"
        ],
        "b":[
            "name":"Farrin \'Flash\' Williams"
        ],
        "backgroundColor": ["red": "158", "green": "50", "blue": "63", "alpha": "1.0"]
    ]
    let finalGirl = [
        "a":[
            "name":"Jenny LeClerc"
        ],
        "b":[
            "name":"Heather Granville"
        ],
        "backgroundColor": ["red": "119", "green": "64", "blue": "103", "alpha": "1.0"]
    ]
    let professor = [
        "a":[
            "name":"Father Rhinehardt"
        ],
        "b":[
            "name":"Professor Longfellow"
        ],
        "backgroundColor": ["red": "207", "green": "208", "blue": "210", "alpha": "1.0"]
    ]
    let fortuneTeller = [
        "a":[
            "name":"Madame Zostra"
        ],
        "b":[
            "name":"Vivian Lopez"
        ],
        "backgroundColor": ["red": "12", "green": "120", "blue": "146", "alpha": "1.0"]
    ]
    let littleGirl = [
        "a":[
            "name":"Zoe Ingstrom"
        ],
        "b":[
            "name":"Missy Dubourde"
        ],
        "backgroundColor": ["red": "206", "green": "141", "blue": "57", "alpha": "1.0"]
    ]
    let curiousBoy = [
        "a":[
            "name":"Brandon Jaspers"
        ],
        "b":[
            "name":"Peter Akimoto"
        ],
        "backgroundColor": ["red": "112", "green": "167", "blue": "99", "alpha": "1.0"]
    ]
    
    func characterDataFromCharacterType(characterType: Character.CharacterType) -> Dictionary<String, Dictionary<String,String>> {
        switch characterType {
        case .Jock:
            return jock
        case .FinalGirl:
            return finalGirl
        case .Professor:
            return professor
        case .FortuneTeller:
            return fortuneTeller
        case .LittleGirl:
            return littleGirl
        case .CuriousBoy:
            return curiousBoy
        }
    }
}