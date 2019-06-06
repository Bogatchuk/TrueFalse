//
//  Game.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 4/26/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import Foundation
import UIKit

class Game {
    var energy = 3
    let questions: [Question]
  //  var answer: Bool?
    var numberQuestion: Int
    var gameIsValue = false
    var gameMark = 0
    
    init() {
        self.questions = AllQuestions().allQuestions
        numberQuestion = 0
    }
    
    func startGame(){
        gameIsValue = true
    }
    
    func stopGame(){
        gameIsValue = false
    }
    
    
    func updateQuestion() -> String{
        if numberQuestion >= questions.count || numberQuestion >= 10 || energy <= 0{
            stopGame()
            return "End"
        }
        return questions[numberQuestion].question
    }
    
    func checkAnswer(answer: Bool) -> String{
        
        numberQuestion = numberQuestion + 1
        if answer == questions[numberQuestion].answer {
            gameMark = gameMark + 1
            return "OnlineGame1AnswerRight"
        } else {
            energy = energy - 1
            return "OnlineGame1AnswerWrong"
        }
        
    }
   
    
    func mark() -> Int {
        switch gameMark {
        case 0...2:
            return 0
        case 3...6:
            return 1
        case 7, 8:
            return 2
        case 9, 10:
            return 3
        default:
            return 0
        }
        
    }
    
    
}
