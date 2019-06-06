//
//  TwoPlayersViewController.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 5/15/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import UIKit

class TwoPlayersViewController: UIViewController {
    
    @IBOutlet weak var fpScoreLabel: UILabel!
    @IBOutlet weak var fpAnswerImage: UIImageView!
    @IBOutlet weak var fpQuestionTextView: UITextView!
    
    @IBOutlet weak var spScoreLabel: UILabel!
    @IBOutlet weak var spAnswerImage: UIImageView!
    @IBOutlet weak var spImage: UIImageView!
    @IBOutlet weak var spQuestionTextView: UITextView!
    @IBOutlet weak var spIsTrue: UIImageView!
    @IBOutlet weak var spBackButton: UIButton!
    
    @IBOutlet weak var spTrueButton: UIButton!
    @IBOutlet weak var spFalseButton: UIButton!
    var game = Multigame()
    override func viewDidLoad() {
        super.viewDidLoad()
        game.startGame()
        fpQuestionTextView.text = game.questions[0].question
        spQuestionTextView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        spQuestionTextView.text = fpQuestionTextView.text
        spIsTrue.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        spBackButton.transform = CGAffineTransform(rotationAngle: .pi)
        spAnswerImage.transform = CGAffineTransform(rotationAngle: .pi)
        spImage.transform = CGAffineTransform(rotationAngle: .pi)
        spTrueButton.transform = CGAffineTransform(rotationAngle: .pi)
        spFalseButton.transform = CGAffineTransform(rotationAngle: .pi)
        spScoreLabel.transform = CGAffineTransform(rotationAngle: .pi)
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func trueButtonClick(_ sender: UIButton) {
        let response = game.checkAnswer(answer: true, player: sender.tag)
        if sender.tag == 1 {
            fpAnswerImage.image = UIImage(named: response)
        } else if sender.tag == 2{
            spAnswerImage.image = UIImage(named: response)
        }
        DispatchQueue.main.async {
            self.fpScoreLabel.text = "\(self.game.firstPlayerScore!) / \(self.game.secondPlayerScore!)"
            self.spScoreLabel.text = "\(self.game.secondPlayerScore!) / \(self.game.firstPlayerScore!)"
        }
        
        
        if game.firstPlayerScore! == 10 || game.secondPlayerScore! == 10 {
            self.performSegue(withIdentifier: "resultSegue", sender: nil)
        }
        fpQuestionTextView.text = game.updateQuestion()
        spQuestionTextView.text = fpQuestionTextView.text
        
    }
    @IBAction func falseButtonClick(_ sender: UIButton) {
        let response = game.checkAnswer(answer: false, player: sender.tag)
        if sender.tag == 3 {
            
            fpAnswerImage.image = UIImage(named: response)
        } else if sender.tag == 4{
            spAnswerImage.image = UIImage(named: response)
        }
        DispatchQueue.main.async {
            self.fpScoreLabel.text = "\(self.game.firstPlayerScore!) / \(self.game.secondPlayerScore!)"
            self.spScoreLabel.text = "\(self.game.secondPlayerScore!) / \(self.game.firstPlayerScore!)"
        }
        
        
        if game.firstPlayerScore! == 10 || game.secondPlayerScore! == 10 {
            self.performSegue(withIdentifier: "resultSegue", sender: nil)
        }
        fpQuestionTextView.text = game.updateQuestion()
        spQuestionTextView.text = fpQuestionTextView.text
    }
    @IBAction func backButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let dvc = segue.destination as! MarkViewController
            if game.firstPlayerScore == 10{
                dvc.mark = "\(self.game.firstPlayerScore!) / \(self.game.secondPlayerScore!)"
                dvc.name = "Марсианин"
                dvc.image = "Icon-60"
                dvc.winMessage = "Вы победили!"
                dvc.isHidden = false
            } else {
                dvc.mark = "\(self.game.firstPlayerScore!) / \(self.game.secondPlayerScore!)"
                dvc.name = "Робот"
                dvc.image = "icons8-робот-2-96"
                dvc.winMessage = "Вы победили!"
                dvc.isHidden = false
            }
        }
    }
    
}
