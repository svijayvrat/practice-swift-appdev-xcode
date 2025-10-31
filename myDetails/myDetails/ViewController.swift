//
//  ViewController.swift
//  myDetails
//
//  Created by GEU on 25/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    @IBOutlet weak var semesterTextField: UITextField!
    @IBOutlet weak var universityTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func populateButtonTapped(_ sender: Any) {
        nameTextField.text="Vijayvrat Singh"
        courseTextField.text="Computer Science and Engineering"
        semesterTextField.text="5"
        universityTextField.text="Graphic Era Hill University"
    }
    

}

