//
//  ViewController.swift
//  switchbutton mix
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var labelOut: UILabel!
    @IBOutlet weak var sliderOut: UISlider!
    @IBAction func buttonTapped(_ sender: Any) {
        if switchState.isOn{
            labelOut.text = "ON - \(sliderOut.value)"
        }else{
            labelOut.text = "OFF - \(sliderOut.value)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        switchState.isOn=false
        sliderOut.value=0
        // Do any additional setup after loading the view.
    }


}

