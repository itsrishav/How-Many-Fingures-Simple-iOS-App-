//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Rishav Pandey on 02/12/16.
//  Copyright © 2016 AviaBird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessInput: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    @IBAction func guessButton(_ sender: AnyObject) {
        let randomNumber = Int(arc4random_uniform(5) + 1)
        let input = Int(guessInput.text!)
        
        if input == randomNumber{
            outputLabel.text = "Yeah!! You Got it Right"
        } else {
            outputLabel.text = "Ooh!! You Failed. It was \(randomNumber)"
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

