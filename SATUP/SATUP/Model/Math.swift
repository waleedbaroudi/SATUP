//
//  Math.swift
//  SATUP
//
//  Created by user on 19.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
class Math: Codable {
    var subject: String?
    var description: String?
    var example: String?
    var videoLink: String?
    init(subject: String, description: String, example: String, videoLink: String) {
        self.subject = subject
        self.description = description
        self.example = example
        self.videoLink = videoLink
    }
    
    func getType() -> Int {
        if let algebra = subject?.hasPrefix("alg-"){if algebra {return 0}}
        if let advanced = subject?.hasPrefix("adv-"){if advanced {return 1}}
        if let data = subject?.hasPrefix("dat-"){if data {return 2}}
        return -1
    }
    
    func setProperName(forType: Int){
        switch forType {
        case 0:
            subject = subject?.replacingOccurrences(of: "alg-", with: "")
        case 1:
            subject = subject?.replacingOccurrences(of: "adv-", with: "")
        case 2:
            subject = subject?.replacingOccurrences(of: "dat-", with: "")
        default:
            subject = "UNKNOWN TYPE"
        }
        
    }
    
}
