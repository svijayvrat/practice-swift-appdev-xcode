//
//  ViewController.swift
//  image-slider-zoom
//
//  Created by GEU on 13/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zoomValue: UISlider!
    @IBOutlet weak var image: UIImageView!
    @IBAction func zoomImage(_ sender: Any) {
        image.transform = CGAffineTransform(scaleX: CGFloat(zoomValue.value), y: CGFloat(zoomValue.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomValue.value=1
        // Do any additional setup after loading the view.
    }


}

