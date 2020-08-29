//
//  ViewController.swift
//  Quizzler
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var quizProgress: UIProgressView!
    
    // Initialise
    var quizBrain = QuizBrain()
    
    // Override View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // IBAction
    @IBAction func optionSelected(_ sender: UIButton) {
        let answerIsCorrect = quizBrain.checkAnswer(sender.currentTitle!)
        if answerIsCorrect {sender.backgroundColor = .green}
        else {sender.backgroundColor = .red}
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (timer) in
            sender.backgroundColor = .clear
            self.quizBrain.nextQuestion()
            self.updateUI()
        }
    }
    
    // UI
    func updateUI() {
        scoreLabel.text = quizBrain.getScore()
        questionLabel.text = quizBrain.getQuestion()
        quizProgress.progress = quizBrain.getProgress()
    }
}

