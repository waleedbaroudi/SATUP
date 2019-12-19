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
    static let VOCAB_URLS: [Int : String] = [0 : "https://api.nooyad.xyz/api/satupvocab", 1 : "https://api.nooyad.xyz/api/satupvocabbookmarks"]
    static let READING_URL = "https://api.nooyad.xyz/api/satupreading"
    static let WRITING_URL = "https://api.nooyad.xyz/api/satupwriting"
    static let MATH_URL = "https://api.nooyad.xyz/api/satupmath"
    static let decoder = JSONDecoder()
}
