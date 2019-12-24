//
//  infoData.swift
//  SATUP
//
//  Created by user on 24.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

class infoData {

private static let readingInfo : String = "Reading is the first section of the SAT. It's 65 minutes long, and asks a total of 52 questions. All of these questions are multiple choice and have four answer choices, A, B, C, and D. The questions are all based on passages—four individual passages and one set of paired passages."
    
private static let writingInfo : String = "The Writing and Language section is your second section on the SAT. This section is 35 minutes long and asks you 44 multiple choice questions. All of the questions are based on passages."

    static func getReadngInfo () -> String {
        return readingInfo
    }
    static func getWritingInfo () -> String {
        return writingInfo
    }

}
