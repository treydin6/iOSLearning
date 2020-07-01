//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Treydin Winward on 6/30/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quizQuestions = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumberIndex: Int = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizQuestions[questionNumberIndex].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() -> Void { // must have mutating bc questionNumberIndex is a let at this point
        if questionNumberIndex + 1 > quizQuestions.count - 1  {
            questionNumberIndex = 0
            score = 0
        }else{
            questionNumberIndex += 1
        }
    }
    
    func getQuestionText() -> String {
        return quizQuestions[questionNumberIndex].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumberIndex + 1) / Float(quizQuestions.count)
    }
    
    func getScore() -> String {
        return "\(score)/\(quizQuestions.count)"
    }
}

// when using a struct to update a datamember you need a mutating function
