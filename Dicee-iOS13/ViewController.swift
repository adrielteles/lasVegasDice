//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    

    let dice2: [UIImage] = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dice default on load screen
        diceImageViewOne.image = dice2.randomElement()
        diceImageViewTwo.image = dice2.randomElement()
    }

    
    @IBAction func buttonRoll(_ sender: UIButton) {
        
        diceImageViewOne.image = dice2.randomElement()
        
        diceImageViewTwo.image = dice2.randomElement()
    }
}
