//
//  ViewController.swift
//  Controls in Action
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchOut: UISwitch!
    
    @IBOutlet weak var buttonOut: UIButton!
    @IBOutlet weak var sliderOut: UISlider!
    
    @IBOutlet weak var sliderValueHolder: UILabel!
    
    @IBAction func switchColor(_ sender: Any) {
        if switchOut.isOn {
            view.backgroundColor = .black
        }else{
            view.backgroundColor = .white
        }
    }
    @IBAction func resetColor(_ sender: Any) {
        view.backgroundColor = .white
        switchOut.isOn = false
        
    }
    @IBAction func slideValue(_ sender: Any) {
        sliderValueHolder.text=String(sliderOut.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        switchOut.isOn=false
        sliderValueHolder.text=String(sliderOut.value)
        // Do any additional setup after loading the view.
    }


}

