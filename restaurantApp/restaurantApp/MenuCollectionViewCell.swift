//
//  MenuCollectionViewCell.swift
//  restaurantApp
//
//  Created by svijayvrat on 29/01/26.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    func configureCell(dish: Dish){
        if let imageName = dish.images.first {
            imageView.image = UIImage(named: imageName)
        }
        imageLabel.text = dish.name
    }

}
