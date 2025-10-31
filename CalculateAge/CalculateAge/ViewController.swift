//
//  ViewController.swift
//  CalculateAge
//
//  Created by GEU on 29/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateField: UITextField!
    
    @IBOutlet weak var outputAgeLabel: UILabel!
    @IBAction func calculateAge(_ sender: Any) {
        let age:Date=Date()
        
        outputAgeLabel.text="Your age is \(age)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

