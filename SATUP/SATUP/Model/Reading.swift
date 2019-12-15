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
    let exercises: [String]
    let answersExercise1: [String]
    let answersExercise2: [String]
    let answersExercise3: [String]
    let correctAnswers: [Int]
    let videoLink: String
    
    init(title: String, passage: String, exercises: [String], answersExercise1: [String], answersExercise2: [String], answersExercise3: [String], correctAnswers: [Int], videoLink:String) {
        self.title = title
        self.passage = passage
        self.exercises = exercises
        self.answersExercise1 = answersExercise1
        self.answersExercise2 = answersExercise2
        self.answersExercise3 = answersExercise3
        self.correctAnswers = correctAnswers
        self.videoLink = videoLink
    }
}
