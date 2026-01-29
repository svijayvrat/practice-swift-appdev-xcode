//
//  RestaurantCollectionViewCell.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import UIKit

class RestaurantCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(restaurant: Restaurant){
        if let imageName = restaurant.images.first{
            imageView.image = UIImage(named: imageName)
        }
        restaurantNameLabel.text = restaurant.name
    }
}
