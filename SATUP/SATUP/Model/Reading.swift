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
    func getAsnwer (reading: Reading, answer: Int, index: Int) -> Bool{
         reading.correctAnswers[index] == answer
        }
    
    func getAnswersResult(reading: Reading, answers: [Int]) -> [Bool]{
        let correctAnswers : [Int] = reading.correctAnswers
        var answerFlags : [Bool] = [false,false,false]
        
        if answers[0] == correctAnswers[0]{
            if answers[1] == correctAnswers[1]{
                if answers[2] == correctAnswers[2]{
                    answerFlags[0] = true
                    answerFlags[1] = true
                    answerFlags[2] = true
                }
            }
        }
        else if answers[1] == correctAnswers[1]{
            if answers[2] == correctAnswers[2]{
                answerFlags[1] = true
                answerFlags[2] = true
            }
        }
        else if answers[2] == correctAnswers[2]{
            answerFlags[2] = true
        }
        return answerFlags
    }
}
