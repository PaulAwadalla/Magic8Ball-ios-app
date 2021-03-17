//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Paul Awadalla on 4/24/19.
//  Copyright © 2019 Paul Awadalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballRandomNumber: Int = 0
    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changingBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changingBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        changingBallImage()
    }
    
    func changingBallImage(){
        ballRandomNumber = Int.random(in: 0 ... 4)
        
        magicBall.image = UIImage(named: ballArray[ballRandomNumber])
    }
    
}

