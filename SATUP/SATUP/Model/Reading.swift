//
//  Reading.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
class Reading: Codable{
    let title: String
    let passage: String
    let excercises: [String]
    let answersExcercise1: [String] //  EDIT NAMING
    let answersExcercise2: [String] //  EDIT NAMING
    let answersExcercise3: [String] //  EDIT NAMING
    let correctAnswers: [Int]
    let videoLink: String
    
    init(title: String, passage: String, excercises: [String], answersExercise1: [String], answersExercise2: [String], answersExercise3: [String], correctAnswers: [Int], videoLink:String) {
        self.title = title
        self.passage = passage
        self.excercises = excercises
        self.answersExcercise1 = answersExercise1
        self.answersExcercise2 = answersExercise2
        self.answersExcercise3 = answersExercise3
        self.correctAnswers = correctAnswers
        self.videoLink = videoLink
    }
}
