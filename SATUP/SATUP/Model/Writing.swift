//
//  Writing.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

class Writing: Codable {
    
    let title: String
    let explanation: String
    let examples: [String]
    let videoLink: String
    
    
    init (title: String, explanation: String, examples: [String], videoLink: String){
        self.title = title
        self.explanation = explanation
        self.examples = examples
        self.videoLink = videoLink
    }
    
}
