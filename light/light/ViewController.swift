//
//  ViewController.swift
//  light
//
//  Created by GEU on 26/08/25.
//

import UIKit

class ViewController: UIViewController {

    var lightOn=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}

