//
//  ViewController.swift
//  programmaticSegue
//
//  Created by svijayvrat on 14/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        segueSwitch.isOn = false
        // Do any additional setup after loading the view.
    }
    @IBAction func yellowButtonTapped(_ sender: Any){
        if segueSwitch.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    @IBAction func greenButtonTapped(_ sender: Any){
        if segueSwitch.isOn{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    

}

