//
//  ViewController.swift
//  Calculator
//
//  Created by GEU on 30/10/25.
//

import UIKit

class ViewController: UIViewController {
    var nums:[Int]=[]
    var numStr:String=""
    @IBOutlet var calculatedOutput: UILabel!
    @IBOutlet var buttonOneRow: [UIButton]!
    @IBOutlet var buttonTwoRow: [UIButton]!
    @IBOutlet var buttonThreeRow: [UIButton]!
    @IBAction func clearOutput(_ sender: Any) {
        calculatedOutput.text="0"
        numStr=""
    }
    @IBAction func buttonOneRowTouched(_ sender: Any) {
        if buttonOneRow[0].isTouchInside{
            numStr+="1"
        }else if buttonOneRow[1].isTouchInside{
            numStr+="2"
        }else{
            numStr+="3"
        }
        calculatedOutput.text=numStr
    }
    @IBAction func buttonTwoRowTouched(_ sender: Any) {
        if buttonTwoRow[0].isTouchInside{
            numStr+="4"
        }else if buttonTwoRow[1].isTouchInside{
            numStr+="5"
        }else{
            numStr+="6"
        }
        calculatedOutput.text=numStr
    }
    @IBAction func buttonThreeRowTouched(_ sender: Any) {
        if buttonThreeRow[0].isTouchInside{
            numStr+="7"
        }else if buttonThreeRow[1].isTouchInside{
            numStr+="8"
        }else{
            numStr+="9"
        }
        calculatedOutput.text=numStr
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

