//
//  Models.swift
//  Restaurant App
//
//  Created by svijayvrat on 28/01/26.
//

import Foundation

struct Restaurant {
    var id: UUID
    var name: String
    var location: String
    var images: [String]
    var cuisine: [Cuisine]
    var menu: [Dish] = []
}

enum Cuisine: String, CaseIterable {
    case american = "American", chinese = "Chinese", french = "French", italian = "Italian", japanese = "Japanese", korean = "Korean",  mexican = "Mexican", mughlai = "Mughlai", north_indian = "North Indian", south_indian = "South Indian", thai = "Thai", vietnamese = "Vietnamese"
    
    var imageName: String {
        switch self {
            case .american: return "american"
            case .chinese: return "chinese"
            case .french: return "french"
            case .italian: return "italian"
            case .japanese: return "japanese"
            case .korean: return "korean"
            case .mexican: return "mexican"
            case .mughlai: return "mughlai"
            case .north_indian: return "north_indian"
            case .south_indian: return "south_indian"
            case .thai: return "thai"
            case .vietnamese: return "vietnamese"
        }
    }
}

struct Dish {
    var id: UUID
    var name: String
    var images: [String]
    var description: String
    var price: Double
    var cuisine: Cuisine
    //var restaurant : Restaurant
}
