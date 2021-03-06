//
//  VocabWord.swift
//  VocabX
//
//  Created by Tomas Leriche on 8/30/18.
//  Copyright © 2018 Tomas Leriche. All rights reserved.
//

import Foundation
import UIKit

struct VocabWord {
    
    let name: String
    let definition: String
    let POS: String
    let isLiked: String
    
    static let NameKey = "NameKey"
    static let DefinitionKey = "DefinitionKey"
    static let POSKey = "POSKey"
    static let isLikedKey = "isLikedKey"
    
    init(dictionary: [String:String]) {
        name = dictionary[VocabWord.NameKey]!
        definition = dictionary[VocabWord.DefinitionKey]!
        POS = dictionary[VocabWord.POSKey]!
        isLiked = dictionary[VocabWord.isLikedKey]!
    }
    
    // computed variable has all the vocabwords in an array
    static var allVocabWords: [VocabWord] {
        
        var vocabWordArray = [VocabWord]()
        
        for d in VocabWord.vocabWordData() {
            
            vocabWordArray.append(VocabWord(dictionary: d))
        }
        
        return vocabWordArray
    }
    
    
    
    static func vocabWordData() -> [[String:String]] {
        
        return [
            [VocabWord.NameKey : "abase", VocabWord.DefinitionKey : "Behave in a way that belittles or degrades (someone).", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "abash", VocabWord.DefinitionKey : "Make (someone) feel embarrassed, disconcerted, or ashamed", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "abate", VocabWord.DefinitionKey : "Become less intense or widespread", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "abbreviate", VocabWord.DefinitionKey : "To shorten something", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "abdicate", VocabWord.DefinitionKey : "Renounce or give up a position, right, or responsibility.", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "aberrant", VocabWord.DefinitionKey : "Abnormal or deviant; Departing from an accepted standard", VocabWord.POSKey : "adjective", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "abet", VocabWord.DefinitionKey : "Assist, usually regarding something wrong or illegal.", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abeyance", VocabWord.DefinitionKey : "A tempororary state of suspension or disuse.", VocabWord.POSKey : "noun", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abject", VocabWord.DefinitionKey : "(of a condition) wretched or as low as possible; lacking pride or dignity.)", VocabWord.POSKey : "adjective", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abjure", VocabWord.DefinitionKey : "renounce solemnly", VocabWord.POSKey : "adjective", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abnegate", VocabWord.DefinitionKey : "The act of renouncing or rejecting something.", VocabWord.POSKey : "noun", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abominate", VocabWord.DefinitionKey : "loathe or hate.", VocabWord.POSKey : "verb", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Aboriginal", VocabWord.DefinitionKey : "The first of its kind in a region; indigenous.", VocabWord.POSKey : "adjective", VocabWord.isLikedKey : "True"],
            [VocabWord.NameKey : "Abortive", VocabWord.DefinitionKey : "Failing to produce the inteded result; unsuccessful or fruitless.", VocabWord.POSKey : "adjective", VocabWord.isLikedKey : "True"],
        ]
        
        
    }
    
    
    
}


    


