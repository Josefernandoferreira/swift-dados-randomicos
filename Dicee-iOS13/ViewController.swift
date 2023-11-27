//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        diceImageView1.image = UIImage(named: "DiceSix")
        diceImageView2.image = UIImage(named: "DiceThree")
  
        //diceImageView1.alpha = 0.5
    }
    
    @IBAction func buttonRoll(_ sender: UIButton) {
        let diceImageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        let randomIndex1 = Int.random(in: 0..<diceImageNames.count)
        let randomIndex2 = Int.random(in: 0..<diceImageNames.count)
        
        diceImageView1.image = UIImage(named: diceImageNames[randomIndex1])
        diceImageView2.image = UIImage(named: diceImageNames[randomIndex2])
    }
    
}

