//
//  ViewController.swift
//  Dicee
//
//  Created by vellyezz on 27.09.2017.
//  Copyright © 2017 vellyezz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // pressed button action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages();
    }
    
    // change randomly dice image
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
        diceImageView1.image = UIImage(named: "dice" +
            String(randomDiceIndex1+1));
        
        diceImageView2.image = UIImage(named: "dice" +
            String(randomDiceIndex2+1));
        
    }

    // iphone motione move
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages();
    }
}

