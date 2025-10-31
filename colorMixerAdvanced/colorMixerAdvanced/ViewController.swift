//
//  ViewController.swift
//  colorMixerAdvanced
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBAction func redToggle(_ sender: Any) {
        if redSwitch.isOn==false{
            redSlider.isEnabled=false
        }else{
            redSlider.isEnabled=true
        }
    }
    @IBAction func greenToggle(_ sender: Any) {
        if greenSwitch.isOn==false{
            greenSlider.isEnabled=false
        }else{
            greenSlider.isEnabled=true
        }
    }
    @IBAction func blueToggle(_ sender: Any) {
        if blueSwitch.isOn==false{
            blueSlider.isEnabled=false
        }else{
            blueSlider.isEnabled=true
        }
    }
    @IBAction func changeColor(_ sender: Any) {
        var redValue=redSlider.value
        var greenValue=greenSlider.value
        var blueValue=blueSlider.value
        if redSwitch.isOn==false{
            redValue=0
        }
        if greenSwitch.isOn==false{
            greenValue=0
        }
        if blueSwitch.isOn==false{
            blueValue=0
        }
        
        view.backgroundColor=UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value=1
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        greenSlider.value=1
        blueSlider.tintColor = .blue
        blueSlider.value=1
        // Do any additional setup after loading the view.
    }


}

