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
    var explanation: String?
    var example: String?
    var videoLink: String?
    init(subject: String, explanation: String, example: String, videoLink: String) {
        self.subject = subject
        self.explanation = explanation
        self.example = example
        self.videoLink = videoLink
    }
    
}
