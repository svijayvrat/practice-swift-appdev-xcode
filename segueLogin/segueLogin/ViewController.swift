//
//  ViewController.swift
//  programmaticSegueTask
//
//  Created by svijayvrat on 14/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var forgetUsernameButton: UIButton!
    @IBOutlet var forgetPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func LogIn(_ segue: UIStoryboardSegue){
        performSegue(withIdentifier: "LandingScreen", sender: nil)
    }
    @IBAction func forgetUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgetUsernameSegue", sender: sender)
    }
    @IBAction func forgetPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgetPasswordSegue", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LandingScreen"{
            segue.destination.title = username.text!
        }else if segue.identifier == "forgetUsernameSegue"{
            segue.destination.title = "Forgot Username?"
        }else if segue.identifier == "forgetPasswordSegue"{
            segue.destination.title = "Forgot Password?"
        }
    }

}

