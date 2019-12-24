//
//  infoData.swift
//  SATUP
//
//  Created by user on 24.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

class infoData {

private static let readingInfo : String = "Reading is the first section of the SAT. It's 65 minutes long, and asks a total of 52 questions. All of these questions are multiple choice and have four answer choices, A, B, C, and D. The questions are all based on passages—four individual passages and one set of paired passages. The paired passages are usually 40-50 lines each and are followed by 10-12 questions. The first four to seven of these questions will be about the passages individually, while the last three to six questions will ask about both passages. You will answer 10 to 12 questions on each passage or set of paired passages, and one or more of the passages might be accompanied by a graphic, like a chart, bar graph, or scatterplot. These passages will ask data interpretation questions that relate to the graphic."
    
private static let writingInfo : String = "The Writing and Language section is your second section on the SAT. This section is 35 minutes long and asks you 44 multiple choice questions. All of the questions are based on passages. In fact, there are four passages followed by 11 questions each. The passages are sourced from the areas of Careers, Social Studies, the Humanities, and Science. You won't get any prose; all of the passages will be nonfiction, explanatory, or argument-based. One or more will also be accompanied by a related graphic, like a chart, table, or graph. The thing you need to know about the Writing and Language passages is that they are full of problems. They will be riddled with errors in punctuation, word choice, sentence structure, and organization. The multiple choice questions will point to various parts of the passages and ask you if and how each part should be fixed."
    
private static let mathInfo : String = "Math will be your third and fourth sections on the SAT, right after Reading and Writing and Language. You will first get a 25-minute section, during which you cannot use a calculator. After a short break, you will move onto the 55-minute section. During this longer section, you are allowed to use your calculator. Both sections will begin with multiple-choice questions, each of which will feature four answer choices. Then you will be asked for some student-produced responses, more commonly known as 'grid-ins.' On the calculator section, some of these grid-ins will relate to one another as part of an Extended Thinking question. In total you will have 15 multiple choice, 5 grid-ins in the no-calculator section, and 30 multiple choice, 8 grid-ins in the calculator section."
    
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
