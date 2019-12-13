//
//  Vocab.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
class Vocab{
    var word: String
    var type: String
    var audioFile: String
    init(word: String, type: String, audioFile: String) {
        self.word = word
        self.type = type
        self.audioFile = audioFile
    }
}
