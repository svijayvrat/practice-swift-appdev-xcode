//
//  RegistrationsTableViewController.swift
//  HotelCodable
//
//  Created by svijayvrat on 12/01/26.
//

import UIKit

class RegistrationsTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Registrations"
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return registrations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegCell", for: indexPath)
        let reg = registrations[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(reg.firstName) \(reg.lastName)"
        var room:String = ""
        if reg.roomType.oneKing == true{
            room = "One King"
        }else if reg.roomType.twoQueens == true{
            room = "Two Queens"
        }else if reg.roomType.pentHouseSuite == true{
            room = "Pent House Suite"
        }else{
            room = "No room"
        }
        content.secondaryText = "\(reg.checkInDate.formatted(date: .abbreviated, time: .omitted)) - \(reg.checkOutDate.formatted(date: .abbreviated, time: .omitted)) : \(room)"
        cell.contentConfiguration = content
        // Configure the cell...
        return cell
    }

    @IBAction func unwindAction(segue: UIStoryboardSegue){
        viewWillAppear(true)
    }
    
}
