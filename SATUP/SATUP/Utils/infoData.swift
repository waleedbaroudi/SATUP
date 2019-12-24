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
    
private static let mathInfo : String = "Math will be your third and fourth sections on the SAT, right after Reading and Writing and Language. You will first get a 25-minute section, during which you cannot use a calculator. After a short break, you will move onto the 55-minute section. In total you will have 15 multiple choice, 5 grid-ins in the no-calculator section, and 30 multiple choice, 8 grid-ins in the calculator section."
    
    static func getReadngInfo () -> String {
        return readingInfo
    }
    static func getWritingInfo () -> String {
        return writingInfo
    }
    static func getMathInfo () -> String {
        return mathInfo
    }
    
}
