//
//  GameViewController.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 4/25/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

   
    @IBOutlet var responseResults: [UIImageView]!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var energyLabel: UILabel!
    
  
    //var answer: Bool?
    var game = Game()
    override func viewDidLoad() {
        super.viewDidLoad()
        energyLabel.text = String(game.energy)
        game.startGame()
        questionTextView.text = game.questions[0].question
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func trueButtonClick(_ sender: Any) {
        let response = game.checkAnswer(answer: true)
        responseResults[game.numberQuestion - 1].image = UIImage(named: response)
        energyLabel.text = String(game.energy)
        if game.energy <= 0 || game.numberQuestion >= 10 {
            self.performSegue(withIdentifier: "markSegue", sender: nil)
        }
        questionTextView.text = game.updateQuestion()

    }
    
    @IBAction func falseButtonClick(_ sender: Any) {
        let response = game.checkAnswer(answer: false)
        responseResults[game.numberQuestion - 1].image = UIImage(named: response)
        energyLabel.text = String(game.energy)
        if game.energy <= 0 || game.numberQuestion >= 10 {
            self.performSegue(withIdentifier: "markSegue", sender: nil)
        }
        questionTextView.text = game.updateQuestion()
       
        
    }
    
    
    @IBAction func backButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "markSegue" {
            let dvc = segue.destination as! MarkViewController
            if game.energy > 0 {
                dvc.mark = "\(10 - game.mark()) / 10"
                dvc.name = "Красавчик"
                dvc.image = "icons8-робот-2-96"
                dvc.winMessage = "Вы победили!"
                dvc.isHidden = false
            } else {
                dvc.mark = "0"
                dvc.name = "Ты Марсианин"
                dvc.image = "Icon"
                dvc.winMessage = "Ты можешь лучше!"
                dvc.isHidden = true
            }
        }
    }
    
}
