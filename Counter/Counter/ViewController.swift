//
//  ViewController.swift
//  Counter
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {
    var count=0
    @IBAction func resetButtonTapped(_ sender: Any) {
        outputLabel.text = "0"
        count=0
    }
    @IBAction func incrementButtonTapped(_ sender: Any) {
        count+=1
        outputLabel.text=String(count)
    }
    @IBAction func decrementButtonTapped(_ sender: Any) {
        count-=1;
        outputLabel.text=String(count)
    }
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

