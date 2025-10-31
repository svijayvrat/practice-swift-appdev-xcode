//
//  ViewController.swift
//  InterestCalc
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ciButtonTapped(_ sender: Any) {
        let principal:Double?=Double(principalField.text!)
        let rate:Double?=Double(rateField.text!)
        let time:Double?=Double(timeField.text!)
        var compoundInterest:Double?=principal!*(pow(1+rate!, time!))
        outputLabel.text="Compound Interest is \(compoundInterest!)"
    }
    @IBAction func siButtonTapped(_ sender: Any) {
        let principal:Double?=Double(principalField.text!)
        let rate:Double?=Double(rateField.text!)
        let time:Double?=Double(timeField.text!)
        var simpleInterest=principal!*rate!*time!/100
        outputLabel.text="Simple Interest is \(simpleInterest)"
    }
    @IBOutlet weak var principalField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var rateField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

