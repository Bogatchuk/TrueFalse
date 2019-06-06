//
//  Multigame.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 5/25/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import Foundation

class Multigame: Game {
    var firstPlayerScore: Int?
    var secondPlayerScore: Int?
    override func startGame(){
        gameIsValue = true
        firstPlayerScore = 0
        secondPlayerScore = 0
    }
    override init() {

        super.init()
    }
    override func updateQuestion() -> String{
        if numberQuestion >= questions.count || firstPlayerScore! >= 10 || secondPlayerScore! >= 10{
            stopGame()
            return "End"
        }
        return questions[numberQuestion].question
    }
    func checkAnswer(answer: Bool, player: Int) -> String{
        
        numberQuestion = numberQuestion + 1
        
        if answer == questions[numberQuestion].answer {
            if player % 2 == 1{
                firstPlayerScore! = firstPlayerScore! + 1
            }else {
                secondPlayerScore! = secondPlayerScore! + 1
            }
            return "OnlineGame1AnswerRight"
        } else {
            if player % 2 == 1{
                secondPlayerScore! = secondPlayerScore! + 1
            }else {
                
                firstPlayerScore! = firstPlayerScore! + 1
            }
            return "OnlineGame1AnswerWrong"
        }
    }
    
    func firstPlayerIsRight(){
        firstPlayerScore = firstPlayerScore! + 1
    }
    
    func secondPlayerIsRight(){
        secondPlayerScore = secondPlayerScore! + 1
    }
}
