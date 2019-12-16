//
//  Netwok.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
struct Network {
    static let session = URLSession.shared
    static let VocabURL = "https://api.nooyad.xyz/api/satupvocab"
    static let ReadingURL = "https://api.nooyad.xyz/api/satupreading"
    static let WritingURL = "https://api.nooyad.xyz/api/"
    static let decoder = JSONDecoder()
}
