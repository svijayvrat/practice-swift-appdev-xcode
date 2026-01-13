//
//  RegFormTableViewController.swift
//  HotelCodable
//
//  Created by svijayvrat on 13/01/26.
//

import UIKit

class RegFormTableViewController: UITableViewController {

    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var checkInDate: UIDatePicker!
    @IBOutlet var checkOutDate: UIDatePicker!
    @IBOutlet var adultCount: UIStepper!
    @IBOutlet var childrenCount: UIStepper!
    @IBOutlet var wifi: UISwitch!
    @IBOutlet var adultStepperLabel: UILabel!
    @IBOutlet var childrenStepperLabel: UILabel!
    @IBAction func adultStepper(_ sender: Any) {
        guard let adultCount=Int(adultCount.value) as Int? else{return}
        adultStepperLabel.text=String(adultCount)
    }
    @IBAction func childrenStepper(_ sender: Any) {
        guard let childrenCount=Int(childrenCount.value) as Int? else{return}
        childrenStepperLabel.text=String(childrenCount)
    }
    @IBAction func saveReg(_ sender: Any) {
        guard let firstNameText=firstName.text, let lastNameText=lastName.text, let emailText=email.text else {return}
        
        guard let checkInDateValue=checkInDate.date as Date?, let checkOutDateValue=checkOutDate.date as Date? else {return}
        
        guard let adultCountValue:Int=Int(adultCount.value) as Int?, let childrenCountValue:Int=Int(childrenCount.value) as Int? else {return}
        
        guard let wifiValue=wifi.isOn as Bool? else {return}
        
        if settedRoomType{
            registrations.append(Registration(firstName: firstNameText, lastName: lastNameText, email: emailText, checkInDate: checkInDateValue, checkOutDate: checkOutDateValue, adultCount: adultCountValue, childrenCount: childrenCountValue, wifi: wifiValue, roomType: RoomType(twoQueens: roomType.twoQueens, oneKing: roomType.oneKing, pentHouseSuite: roomType.pentHouseSuite)))
            
            firstName.text=""
            lastName.text=""
            email.text=""
            checkInDate.date=Date()
            checkOutDate.date=Date()
            adultCount.value=0
            childrenCount.value=0
            wifi.isOn=false
            adultStepperLabel.text="0"
            childrenStepperLabel.text="0"
            
        }else{
            return
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settedRoomType=false
        wifi.isOn=false
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 13
    }
    
}
