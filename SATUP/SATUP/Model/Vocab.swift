//
//  Vocab.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
extension Vocab: Hashable{
    static func == (lhs: Vocab, rhs: Vocab) -> Bool {
        return lhs.word == rhs.word
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(word)
    }
    
    
}

class Vocab: Codable{
    var word: String
    var type: String
    var example: String
    var meaning: String

    init(word: String, type: String, audioFile: String, example: String, meaning:String) {
        self.word = word
        self.type = type
        self.example = example
        self.meaning = meaning
    }
    
    func audioFileName() -> String {
        return "\(word.lowercased()).mp3"
    }
    
    func equals(vocab: Vocab) -> Bool{
        return self.word == vocab.word
    }
}
