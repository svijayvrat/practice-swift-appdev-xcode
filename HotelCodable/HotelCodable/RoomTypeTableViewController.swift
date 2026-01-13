//
//  RoomTypeTableViewController.swift
//  HotelCodable
//
//  Created by svijayvrat on 13/01/26.
//

import UIKit

class RoomTypeTableViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        twoQueensButton.setImage(UIImage(), for: .normal)
        oneKingButton.setImage(UIImage(), for: .normal)
        penthouseSuiteButton.setImage(UIImage(), for: .normal)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateButtonImg()
    }
    // MARK: - Table view data source
    func updateButtonImg(){
        if roomType.twoQueens == true{
            twoQueensButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            twoQueensButton.configuration?.imagePlacement = .trailing
            twoQueensButton.imageView?.tintColor = .systemBlue
            
            oneKingButton.setImage(UIImage(), for: .normal)
            penthouseSuiteButton.setImage(UIImage(), for: .normal)
        }else if roomType.oneKing == true{
            twoQueensButton.setImage(UIImage(), for: .normal)
            
            oneKingButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            oneKingButton.configuration?.imagePlacement = .trailing
            oneKingButton.imageView?.tintColor = .systemBlue
            penthouseSuiteButton.setImage(UIImage(), for: .normal)
        }else if roomType.pentHouseSuite == true{
            twoQueensButton.setImage(UIImage(), for: .normal)
            oneKingButton.setImage(UIImage(), for: .normal)
            
            penthouseSuiteButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            penthouseSuiteButton.configuration?.imagePlacement = .trailing
            penthouseSuiteButton.imageView?.tintColor = .systemBlue
        }
    }
    @IBOutlet var twoQueensButton: UIButton!
    @IBOutlet var oneKingButton: UIButton!
    @IBOutlet var penthouseSuiteButton: UIButton!
    @IBAction func selectRoomType(_ sender: Any) {
        if twoQueensButton.isTouchInside{
            roomType=RoomType(twoQueens: true, oneKing: false, pentHouseSuite: false)
        }else if oneKingButton.isTouchInside{
            roomType=RoomType(twoQueens: false, oneKing: true, pentHouseSuite: false)
        }else if penthouseSuiteButton.isTouchInside{
            roomType=RoomType(twoQueens: false, oneKing: false, pentHouseSuite: true)
        }else{
            
        }
        settedRoomType=true
        
        viewWillAppear(true)
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
}
