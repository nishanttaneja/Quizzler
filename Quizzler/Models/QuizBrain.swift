//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import Foundation

struct QuizBrain {
    // Initialise
    var questionNumber: Int = 0
    var score: Int = 0
    let questions = [
        Question("A slug's blood is green.", "True"),
        Question("Approximately one quarter of human bones are in the feet.", "True"),
        Question("The total surface area of two human lungs is approximately 70 square metres.", "True"),
        Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"),
        Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"),
        Question("It is illegal to pee in the Ocean in Portugal.", "True"),
        Question("You can lead a cow down stairs but not up stairs.", "False"),
        Question("Google was originally called 'Backrub'.", "True"),
        Question("Buzz Aldrin's mother's maiden name was 'Moon'.", "True"),
        Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", "False"),
        Question("No piece of square dry paper can be folded in half more than 7 times.", "False"),
        Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", "True")
    ]
    
    // Update Score & QuestionNumber
    mutating func nextQuestion() {
        if questionNumber < questions.count-1 {questionNumber += 1}
        else {questionNumber = 0; score = 0}
    }
    mutating func checkAnswer(_ selectedAnswer: String) -> Bool {
        if selectedAnswer == questions[questionNumber].answer {score += 1; return true}
        return false
    }
    
    // Return Data
    func getScore() -> Int {return score}
    func getQuestion() -> String {return questions[questionNumber].title}
    func getScore() -> String {return "Score: \(score)"}
    func getProgress() -> Float {return Float(questionNumber)/Float(questions.count)}
}
