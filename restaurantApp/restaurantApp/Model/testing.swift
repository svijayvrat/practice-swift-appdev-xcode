//
//  testing.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import Playgrounds

#Playground {
    var dataModel = DataModel()
    let filtered = dataModel.getRestaurantForCuisine(cuisine: .chinese)
    print(filtered)
}
