//
//  ViewController.swift
//  IBBasics
//
//  Created by GEU on 25/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func buttonTapped(_ sender: Any) {
        textField.text="I am in Dehradun"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

