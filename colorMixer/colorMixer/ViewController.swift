//
//  ViewController.swift
//  colorMixer
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labels: UILabel!
    
    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor=UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value=1
        greenSlider.value=1
        blueSlider.value=1
        // Do any additional setup after loading the view.
    }


}

