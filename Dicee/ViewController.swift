//
//  ViewController.swift
//  Dicee
//
//  Created by Ice on 7/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var DiceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var ranDomDiceIndex1: Int = 0
    var ranDomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceONE: UIImageView!
    @IBOutlet weak var diceTWO: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateDiceImage()
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        ranDomDiceIndex1 = Int.random(in: 0 ... 5)
        ranDomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(ranDomDiceIndex1)
        
        diceONE.image = UIImage(named: DiceArray[ranDomDiceIndex1])
        diceTWO.image = UIImage(named: DiceArray[ranDomDiceIndex2])
        
    }
    

}

