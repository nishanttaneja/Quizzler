//
//  Question.swift
//  Quizzler
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import Foundation

struct Question {
    let title: String
    let answer: String
    
    init(_ title: String, _ answer: String) {
        self.title = title
        self.answer = answer
    }
}
