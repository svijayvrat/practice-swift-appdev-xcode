//
//  CuisineCollectionViewCell.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import UIKit

class CuisineCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(cuisine: Cuisine){
        imageView.image = UIImage(named: cuisine.imageName)
        imageLabel.text = cuisine.rawValue
    }
}
