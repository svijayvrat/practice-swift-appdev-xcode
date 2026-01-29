//
//  MenuViewController.swift
//  restaurantApp
//
//  Created by svijayvrat on 29/01/26.
//

import UIKit

class MenuViewController: UIViewController {
    
    var dataModel: DataModel!
    var selectedRestaurant: Restaurant?
    var dishes: [Dish] = []
    

    @IBOutlet weak var menuCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuCollectionView.register(UINib(nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "menu_cell")
        if let selectedRestaurant = selectedRestaurant {
            dishes = selectedRestaurant.menu
        }
        
        if let flowLayout = menuCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = .zero
            flowLayout.itemSize = CGSize(width: self.view.bounds.width, height: 300)
        }
        
        menuCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
}
extension MenuViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dishes.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menu_cell", for: indexPath)

        //get the restaurant at indexpath
        let dish = dishes[indexPath.row]
        
        //type cast UICollectionView cell to RestaurantCollectionView Cell
        guard let dishCell = cell as? MenuCollectionViewCell else{ return cell }
        
        //configure cell to show restaurant information.
        dishCell.configureCell(dish: dish)

        // If the cell's content needs clipping to corner radius, ensure its contentView is masked while the shadowView is not
        dishCell.contentView.layer.cornerRadius = 10

        return cell
    }
    
    
}
