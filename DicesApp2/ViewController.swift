//
//  ViewController.swift
//  DicesApp2
//
//  Created by Bayan on 9/24/19.
//  Copyright © 2019 bayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceeIndex1 :Int = 0
    var randomDiceeIndex2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceeImageView1: UIImageView!
    
    @IBOutlet weak var diceeImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        diceUpdateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
       diceUpdateImage()
    
    }
    func diceUpdateImage()  {
        randomDiceeIndex1 = Int(arc4random_uniform(6))
        randomDiceeIndex2 = Int(arc4random_uniform(6))
        //  print (randomDiceeIndex1) //test debug
        
        diceeImageView1.image = UIImage(named:diceArray [randomDiceeIndex1])
        diceeImageView2.image = UIImage(named: diceArray [randomDiceeIndex2])
    }
    
    
}

