//
//  Question.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 4/26/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let answer: Bool
    
    init (question: String, answer: Bool){
        self.question = question
        self.answer = answer
    }
}
