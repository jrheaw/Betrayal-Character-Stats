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
            "name": "Ox Bellows",
            "icon": "ox.pdf",
            "info": "Age: 23 ∙ Height: 6'4\" ∙ Weight: 288lbs ∙ Hobbies: Football, Shiny Objects ∙ Birthday: October 18th"
        ],
        "b":[
            "name":"Darrin \"Flash\" Williams",
            "icon": "darrin.pdf",
            "info": "Age: 20 ∙ Height: 5'11\" ∙ Weight: 188lbs ∙ Hobbies: Track, Music, Shakespearean Literature ∙ Birthday: June 6th"
        ],
        "backgroundColor": ["red": 168, "green": 50, "blue": 63, "alpha": 1.0],
        "icon":"jock.pdf"
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
            "name":"Jenny LeClerc",
            "icon": "jenny.pdf",
            "info": "Age: 21 ∙ Height: 5'7\" ∙ Weight: 142lbs ∙ Hobbies: Reading, Soccer ∙ Birthday: March 4th"
        ],
        "b":[
            "name":"Heather Granville",
            "icon": "heather.pdf",
            "info": "Age: 18 ∙ Height: 5'2\" ∙ Weight: 120lbs ∙ Hobbies: Television, Shopping ∙ Birthday: August 2nd"
        ],
        "backgroundColor": ["red": 119, "green": 64, "blue": 103, "alpha": 1.0],
        "icon":"finalGirl.pdf"
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
            "name":"Father Rhinehardt",
            "icon": "father.pdf",
            "info": "Age: 62 ∙ Height: 5'9\" ∙ Weight: 185lbs ∙ Hobbies: Fencing, Gardening ∙ Birthday: April 29th"
        ],
        "b":[
            "name":"Professor Longfellow",
            "icon": "longfellow.pdf",
            "info": "Age: 57 ∙ Height: 5'11\" ∙ Weight: 153lbs ∙ Hobbies: Gaelic Music, Drama, Fine Wines ∙ Birthday: July 27th"
        ],
        "backgroundColor": ["red": 170, "green": 170, "blue": 170, "alpha": 1.0],
        "icon":"professor.pdf"
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
            "name":"Madame Zostra",
            "icon": "madame.pdf",
            "info": "Age: 37 ∙ Height: 5'0\" ∙ Weight: 150lbs ∙ Hobbies: Astrology, Cooking, Baseball ∙ Birthday: December 10th"
        ],
        "b":[
            "name":"Vivian Lopez",
            "icon": "vivian.pdf",
            "info": "Age: 42 ∙ Height: 5'5\" ∙ Weight: 142lbs ∙ Hobbies: Old Movies, Horses ∙ Birthday: January 11th"
        ],
        "backgroundColor": ["red": 12, "green": 120, "blue": 146, "alpha": 1.0],
        "icon":"fortuneTeller.pdf"
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
            "name":"Zoe Ingstrom",
            "icon": "zoe.pdf",
            "info": "Age: 8 ∙ Height: 3'9\" ∙ Weight: 49lbs ∙ Hobbies: Dolls, Music ∙ Birthday: November 5th"
        ],
        "b":[
            "name":"Missy Dubourde",
            "icon": "missy.pdf",
            "info": "Age: 9 ∙ Height: 4'2\" ∙ Weight: 62lbs ∙ Hobbies: Swimming, Medicine ∙ Birthday: February 14th"
        ],
        "backgroundColor": ["red": 206, "green": 141, "blue": 57, "alpha": 1.0],
        "icon":"littleGirl.pdf"
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
            "name":"Brandon Jaspers",
            "icon": "brandon.pdf",
            "info": "Age: 12 ∙ Height: 5'1\" ∙ Weight: 109lbs ∙ Hobbies: Computers, Camping, Hockey ∙ Birthday: May 21st"
        ],
        "b":[
            "name":"Peter Akimoto",
            "icon": "peter.pdf",
            "info": "Age: 13 ∙ Height: 4'11\" ∙ Weight: 98lbs ∙ Hobbies: Bugs, Basketball ∙ Birthday: September 3rd"
        ],
        "backgroundColor": ["red": 112, "green": 167, "blue": 99, "alpha": 1.0],
        "icon":"curiousBoy.pdf"
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