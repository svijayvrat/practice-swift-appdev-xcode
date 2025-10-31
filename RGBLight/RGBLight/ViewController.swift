//
//  ViewController.swift
//  RGBLight
//
//  Created by GEU on 27/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var colorCycleCount=0;
    @IBOutlet weak var buttonChangeColor: UIButton!
    fileprivate func updateUI() {
        if colorCycleCount==0{
            buttonChangeColor.backgroundColor = .red
            colorCycleCount+=1
        }else if colorCycleCount==1{
            buttonChangeColor.backgroundColor = .green
            colorCycleCount+=1
        }else{
            buttonChangeColor.backgroundColor = .blue
            colorCycleCount=0
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }


}

