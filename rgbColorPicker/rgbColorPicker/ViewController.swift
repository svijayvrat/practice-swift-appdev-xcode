//
//  ViewController.swift
//  rgbColorPicker
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValField: UITextField!
    @IBOutlet weak var greenValField: UITextField!
    @IBOutlet weak var blueValField: UITextField!
    @IBAction func changeColorTapped(_ sender: Any) {
        let temp_red:Int?=(Int(redValField.text!))
        let red:CGFloat?=CGFloat((temp_red!)/255)
        let temp_green:Int?=(Int(greenValField.text!))
        let green:CGFloat?=CGFloat((temp_green!)/255)
        let temp_blue:Int?=(Int(blueValField.text!))
        let blue:CGFloat?=CGFloat((temp_blue!)/255)
        view.backgroundColor=UIColor(red: red!, green: green!, blue: blue!, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

