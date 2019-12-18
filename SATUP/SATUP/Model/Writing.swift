//
//  Writing.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

class Writing: Codable {
    
    let subject: String
    let content: String
    let videoLink: String
    
    
    init (subject: String, content: String, videoLink: String){
        self.subject = subject
        self.content = content
        self.videoLink = videoLink
    }
    
}
