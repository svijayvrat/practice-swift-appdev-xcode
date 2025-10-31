//
//  ViewController.swift
//  SliderColorPicker
//
//  Created by GEU on 29/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currView: UIView!
    @IBOutlet weak var RValue: UISlider!
    @IBOutlet weak var GValue: UISlider!
    @IBOutlet weak var BValue: UISlider!
    @IBAction func changeRValue(_ sender: Any) {
        currView.backgroundColor=UIColor(red: CGFloat(RValue.value), green: CGFloat(GValue.value), blue: CGFloat(BValue.value), alpha: 1.0)
    }
    @IBAction func changeGValue(_ sender: Any) {
        currView.backgroundColor=UIColor(red: CGFloat(RValue.value), green: CGFloat(GValue.value), blue: CGFloat(BValue.value), alpha: 1.0)
    }
    @IBAction func changeBValue(_ sender: Any) {
        currView.backgroundColor=UIColor(red: CGFloat(RValue.value), green: CGFloat(GValue.value), blue: CGFloat(BValue.value), alpha: 1.0)
    }
    @IBAction func resetColor(_ sender: Any) {
        currView.backgroundColor=UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: 1.0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

