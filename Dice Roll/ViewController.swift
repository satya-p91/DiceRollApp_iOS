//
//  ViewController.swift
//  Dice Roll
//
//  Created by satya prakash on 7/13/20.
//  Copyright © 2020 satya prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImgView1: UIImageView!
    @IBOutlet weak var diceImgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }
    
    override var canBecomeFirstResponder: Bool{
        get{
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateDiceImages()
        }
    }

    @IBAction func rollButton(_ sender: UIButton) {
       updateDiceImages()
    }
    
    
    func updateDiceImages() {
        diceImgView1.image = UIImage(named: "dice\(Int.random(in: 1 ... 6))")
        diceImgView2.image = UIImage(named: "dice\(Int.random(in: 1 ... 6))")
    }
    
}

