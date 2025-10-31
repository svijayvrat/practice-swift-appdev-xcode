//
//  ViewController.swift
//  set clear text
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var setTextHolder: UILabel!
    @IBAction func setText(_ sender: Any) {
        setTextHolder.text=textInput.text
        textInput.text=""
    }
    @IBAction func clearText(_ sender: Any) {
        textInput.text=""
        setTextHolder.text=""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

