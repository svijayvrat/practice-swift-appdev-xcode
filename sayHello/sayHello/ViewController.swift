//
//  ViewController.swift
//  sayHello
//
//  Created by GEU on 25/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonSayHello(_ sender: Any) {
        let name=nameTextField.text!
        outputLabel.text="Hello \(name)"
        
    }
    

}

