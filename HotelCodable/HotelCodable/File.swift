//
//  File.swift
//  HotelCodable
//
//  Created by svijayvrat on 12/01/26.
//

import Foundation

//Data Model - Room Type
struct RoomType{
    var twoQueens: Bool{
        didSet{
            oneKing = false
            pentHouseSuite = false
        }
    }
    var oneKing: Bool{
        didSet{
            twoQueens = false
            pentHouseSuite = false
        }
    }
    var pentHouseSuite: Bool{
        didSet{
            oneKing = false
            twoQueens = false
        }
    }
}

//Data Model - Registration Details
struct registration{
    var firstName: String
    var lastName: String
    var email: String
    
    var checkInDate: Date
    var checkOutDate: Date
    
    var adultCount: Int
    var childrenCount: Int
    
    var wifi: Bool
    
    var roomType: RoomType
    
    var numberOfNights: Int {
        return Calendar.current.dateComponents([.day], from: checkInDate, to: checkOutDate).day! + 1
    }
}
