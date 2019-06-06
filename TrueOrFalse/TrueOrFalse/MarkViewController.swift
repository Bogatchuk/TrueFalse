//
//  MarkViewController.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 5/9/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import UIKit

class MarkViewController: UIViewController {

    @IBOutlet weak var markLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageWin: UIImageView!
    
    @IBOutlet weak var winImage: UIImageView!
    @IBOutlet weak var winLabel: UILabel!
    var mark: String?
    var name: String?
    var image: String?
    var isHidden: Bool?
    var winMessage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        markLabel.text = mark
        nameLabel.text = name
        imageWin.image = UIImage(named: image!)
        winLabel.text = winMessage
        winImage.isHidden = isHidden!
        // Do any additional setup after loading the view.
    }
    

    @IBAction func menuButtonClick(_ sender: UIButton) {
        
    }
    

    @IBAction func gameButtonClick(_ sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
    }
}
