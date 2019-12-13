//
//  Reading.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
class Reading{
    var title: String
    var passage: String
    var exercises: [String]
    var answersExercise1: [String]
    var answersExercise2: [String]
    var answersExercise3: [String]
    var correctAnswers: [Int]
    var link: String
    
    init(title: String, passage: String, exercises: [String], answersExercise1: [String], answersExercise2: [String], answersExercise3: [String], correctAnswers: [Int], link:String) {
        self.title = title
        self.passage = passage
        self.exercises = exercises
        self.answersExercise1 = answersExercise1
        self.answersExercise2 = answersExercise2
        self.answersExercise3 = answersExercise3
        self.correctAnswers = correctAnswers
        self.link = link
    }
}
