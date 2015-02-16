//
//  CharacterData.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import Foundation

// Until I learn a better option. :(
struct CharacterData {
    let jock: [String:Any] = [
        "a":[
            "name": "Ox Bellows"
        ],
        "b":[
            "name":"Farrin \"Flash\" Williams"
        ],
        "backgroundColor": ["red": 158, "green": 50, "blue": 63, "alpha": 1.0]
    ]
    let jockStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 4,
                "valuesArray": [2,2,2,3,4,5,5,6]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [4,5,5,6,6,7,8,8]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [2,2,3,4,5,5,6,7]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [2,2,3,3,5,5,6,6]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 4,
                "valuesArray": [4,4,4,5,6,7,7,8]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,4,5,6,6,7]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [1,2,3,4,5,5,5,7]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,4,5,5,5,7]
            ]
        ]
    ]
    let finalGirl: [String:Any] = [
        "a":[
            "name":"Jenny LeClerc"
        ],
        "b":[
            "name":"Heather Granville"
        ],
        "backgroundColor": ["red": 119, "green": 64, "blue": 103, "alpha": 1.0]
    ]
    let finalGirlStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 3,
                "valuesArray": [2,3,4,4,4,5,6,8]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [3,4,4,4,4,5,6,8]
            ],
            "sanity": [
                "startingIndex": 4,
                "valuesArray": [1,1,2,4,4,4,5,6]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,4,4,5,6,8]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 2,
                "valuesArray": [3,3,4,5,6,6,7,8]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [3,3,3,4,5,6,7,8]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [3,3,3,4,5,6,6,6]
            ],
            "knowledge": [
                "startingIndex": 4,
                "valuesArray": [2,3,3,4,5,6,7,8]
            ]
        ]
    ]
    let professor: [String:Any] = [
        "a":[
            "name":"Father Rhinehardt"
        ],
        "b":[
            "name":"Professor Longfellow"
        ],
        "backgroundColor": ["red": 207, "green": 208, "blue": 210, "alpha": 1.0]
    ]
    let professorStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,4,5,6,7,7]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [1,2,2,4,4,5,5,7]
            ],
            "sanity": [
                "startingIndex": 4,
                "valuesArray": [3,4,5,5,6,7,7,8]
            ],
            "knowledge": [
                "startingIndex": 3,
                "valuesArray": [1,3,3,4,5,6,6,8]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 3,
                "valuesArray": [2,2,4,4,5,5,6,6]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [1,2,3,4,5,5,6,6]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [1,3,3,4,5,5,6,7]
            ],
            "knowledge": [
                "startingIndex": 4,
                "valuesArray": [4,5,5,5,5,6,7,8]
            ]
        ]
    ]
    let fortuneTeller: [String:Any] = [
        "a":[
            "name":"Madame Zostra"
        ],
        "b":[
            "name":"Vivian Lopez"
        ],
        "backgroundColor": ["red": 12, "green": 120, "blue": 146, "alpha": 1.0]
    ]
    let fortuneTellerStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,5,5,6,6,7]
            ],
            "might": [
                "startingIndex": 3,
                "valuesArray": [2,3,3,4,5,5,5,6]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [4,4,4,5,6,7,8,8]
            ],
            "knowledge": [
                "startingIndex": 3,
                "valuesArray": [1,3,4,4,4,5,6,6]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 3,
                "valuesArray": [3,4,4,4,4,6,7,8]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [2,2,2,4,4,5,6,6]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [4,4,4,5,6,7,8,8]
            ],
            "knowledge": [
                "startingIndex": 3,
                "valuesArray": [4,5,5,5,5,6,6,7]
            ]
        ]
    ]
    let littleGirl: [String:Any] = [
        "a":[
            "name":"Zoe Ingstrom"
        ],
        "b":[
            "name":"Missy Dubourde"
        ],
        "backgroundColor": ["red": 206, "green": 141, "blue": 57, "alpha": 1.0]
    ]
    let littleGirlStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 3,
                "valuesArray": [4,4,4,4,5,6,8,8]
            ],
            "might": [
                "startingIndex": 3,
                "valuesArray": [2,2,3,3,4,4,6,7]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [3,4,5,5,6,6,7,8]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [1,2,3,4,4,5,5,5]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 2,
                "valuesArray": [3,4,5,6,6,6,7,7]
            ],
            "might": [
                "startingIndex": 3,
                "valuesArray": [2,3,3,3,4,5,6,7]
            ],
            "sanity": [
                "startingIndex": 2,
                "valuesArray": [1,2,3,4,5,5,6,7]
            ],
            "knowledge": [
                "startingIndex": 3,
                "valuesArray": [2,3,4,4,5,6,6,6]
            ]
        ]
    ]
    let curiousBoy: [String:Any] = [
        "a":[
            "name":"Brandon Jaspers"
        ],
        "b":[
            "name":"Peter Akimoto"
        ],
        "backgroundColor": ["red": 112, "green": 167, "blue": 99, "alpha": 1.0]
    ]
    let curiousBoyStats: [String:[String:[String:Any]]] = [
        "a": [
            "speed": [
                "startingIndex": 2,
                "valuesArray": [3,4,4,4,5,6,7,8]
            ],
            "might": [
                "startingIndex": 3,
                "valuesArray": [2,3,3,4,5,6,6,7]
            ],
            "sanity": [
                "startingIndex": 3,
                "valuesArray": [3,3,3,4,5,6,7,8]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [1,3,3,5,5,6,6,7]
            ]
        ],
        "b": [
            "speed": [
                "startingIndex": 3,
                "valuesArray": [3,3,3,4,6,6,7,7]
            ],
            "might": [
                "startingIndex": 2,
                "valuesArray": [2,3,3,4,5,5,6,8]
            ],
            "sanity": [
                "startingIndex": 3,
                "valuesArray": [3,4,4,4,5,6,6,7]
            ],
            "knowledge": [
                "startingIndex": 2,
                "valuesArray": [3,4,4,5,6,7,7,8]
            ]
        ]
    ]
    
    func characterDataFromCharacterType(characterType: CharacterCard.CharacterType) -> [String:Any] {
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
    func characterStatsFromCharacterType(characterType: CharacterCard.CharacterType) -> [String:[String:[String:Any]]] {
        switch characterType {
        case .Jock:
            return jockStats
        case .FinalGirl:
            return finalGirlStats
        case .Professor:
            return professorStats
        case .FortuneTeller:
            return fortuneTellerStats
        case .LittleGirl:
            return littleGirlStats
        case .CuriousBoy:
            return curiousBoyStats
        }
    }
}