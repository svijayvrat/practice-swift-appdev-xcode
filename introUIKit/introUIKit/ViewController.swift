//
//  ViewController.swift
//  introUIKit
//
//  Created by GEU on 15/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //create UI View
        let boxView=UIView(frame:CGRect(x:100,y:100,width:100,height:100))
        let myText=UILabel(frame:CGRect(x:200,y:200,width:100,height:100))
        myText.text="GEHU"
        boxView.backgroundColor = .red
        view.addSubview(boxView)
        view.addSubview(myText)
        
        
        
    }


}

