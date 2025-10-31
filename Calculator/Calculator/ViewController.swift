//
//  ViewController.swift
//  Calculator
//
//  Created by GEU on 30/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var calculatedOutput: UILabel!
    @IBOutlet var buttonOne: UIButton!
    @IBAction func clearOutput(_ sender: Any) {
        calculatedOutput.text="0"
    }
    @IBAction func inputNum(_ sender: Any) {
        var num:Int=0
        var multiplier:Int=1
        if buttonOne.isEnabled{
            calculatedOutput.text="1"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

