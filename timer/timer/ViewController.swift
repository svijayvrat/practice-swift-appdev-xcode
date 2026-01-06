//
//  ViewController.swift
//  timer
//
//  Created by GEU on 05/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stopTimerButton: UIButton!
    @IBOutlet var playTimerButton: UIButton!
    @IBOutlet var pauseTimerButton: UIButton!
    
    @IBOutlet var secLabel: UILabel!
    @IBOutlet var minLabel: UILabel!
    @IBOutlet var timeLimit: UISegmentedControl!
    var setted:Bool=false
    
    @IBAction func setTime(_ sender: Any) {
        if timeLimit.selectedSegmentIndex==0{
            minLabel.text="10"
        }else if timeLimit.selectedSegmentIndex==1{
            minLabel.text="20"
        }else if timeLimit.selectedSegmentIndex==2{
            minLabel.text="30"
        }
        playTimerButton.isEnabled=true
        stopTimerButton.isEnabled=true
        pauseTimerButton.isEnabled=true
    }
    @IBAction func playTimer(_ sender: Any) {
        var timer:Timer?
        playTimerButton.isEnabled=false
        pauseTimerButton.isEnabled=true
        stopTimerButton.isEnabled=true
        timeLimit.isEnabled=false
        var i:Int=Int(minLabel.text!)!*60+Int(secLabel.text!)!
        timer=Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ _ in
            if i <= 0 || self.pauseTimerButton.isEnabled==false || self.stopTimerButton.isEnabled==false{
                timer?.invalidate()
            }
            i-=1
            if let timer=timer{
                if timer.isValid{
                    self.secLabel.text="\(String(format: "%02d", i%60))"
                    self.minLabel.text="\(String(format: "%02d", i/60))"
                }
            }
            
        }
    }
    @IBAction func pauseTimer(_ sender: Any) {
        pauseTimerButton.isEnabled=false
        playTimerButton.isEnabled=true
    }
    @IBAction func stopTimer(_ sender: Any) {
        minLabel.text="00"
        secLabel.text="00"
        timeLimit.isEnabled=true
        playTimerButton.isEnabled=false
        stopTimerButton.isEnabled=false
        pauseTimerButton.isEnabled=false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playTimerButton.isEnabled=false
        stopTimerButton.isEnabled=false
        pauseTimerButton.isEnabled=false
    }


}

