//
//  RestaurantViewController.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import UIKit

class RestaurantViewController: UIViewController {

    var dataModel: DataModel!
    var selectedCuisine: Cuisine?
    var restaurants: [Restaurant] = []
    
    @IBOutlet weak var restaurantCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let selectedCuisine = selectedCuisine{
            restaurants = dataModel.getRestaurantForCuisine(cuisine: selectedCuisine)
        }
        
        //register collection view cell so that i can be instantiated using dequeueReusableCell function
        restaurantCollectionView.register(UINib(nibName: "RestaurantCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "restaurant_cell")
        
//        if let flowLayout = restaurantCollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
//            flowLayout.estimatedItemSize = .zero
//            flowLayout.itemSize = CGSize(width: self.view.bounds.width, height: 300)
//        }
        
        //generate compositional layout
        let layout = generateLayout()
        //change the laytout to be compositional layout
        restaurantCollectionView.setCollectionViewLayout(layout, animated: true)
        
        restaurantCollectionView.dataSource = self
        restaurantCollectionView.delegate = self
        
    }
    
    //create a compositional layout for the collection view
    func generateLayout() -> UICollectionViewLayout {
        //create the size of item
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.5),
            heightDimension: .fractionalHeight(1.0)
        )
        
        //create the item
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //create the size of group
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(150.0)
        )
        
        //create the group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 2)
        
        group.interItemSpacing = .fixed(10)
        //create the section
        let section = NSCollectionLayoutSection(group: group)
        
        //create the layout
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = restaurantCollectionView.indexPathsForSelectedItems else{
            return
        }
        guard let selectedItemIndexPath = indexPath.first else{
            return
        }
        
        let restaurant = restaurants[selectedItemIndexPath.row]
        
        if let destinationVC = segue.destination as? MenuViewController {
            //send the cuisine to restaurant vc
            destinationVC.selectedRestaurant = restaurant
            
            //send the data model to restaurant vc
            destinationVC.dataModel = dataModel
        }
        
    }
}

extension RestaurantViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurants.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurant_cell", for: indexPath)

        //get the restaurant at indexpath
        let restaurant = restaurants[indexPath.row]
        
        //type cast UICollectionView cell to RestaurantCollectionView Cell
        guard let restaurantCell = cell as? RestaurantCollectionViewCell else{ return cell }
        
        //configure cell to show restaurant information.
        restaurantCell.configureCell(restaurant: restaurant)
        
        // Round the content while allowing the shadow to render outside bounds
        restaurantCell.shadowView.layer.cornerRadius = 10
        restaurantCell.shadowView.layer.masksToBounds = false

        // Configure shadow
        restaurantCell.shadowView.layer.shadowColor = UIColor.black.cgColor
        restaurantCell.shadowView.layer.shadowOpacity = 0.15
        restaurantCell.shadowView.layer.shadowRadius = 8
        restaurantCell.shadowView.layer.shadowOffset = CGSize(width: 0, height: 4)

        // Provide a shadowPath for better performance and consistent shape
        let shadowPath = UIBezierPath(roundedRect: restaurantCell.shadowView.bounds, cornerRadius: 10).cgPath
        restaurantCell.shadowView.layer.shadowPath = shadowPath

        // If the cell's content needs clipping to corner radius, ensure its contentView is masked while the shadowView is not
        restaurantCell.contentView.layer.cornerRadius = 10
        restaurantCell.contentView.layer.masksToBounds = true

        return cell
    }
}
extension RestaurantViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "restaurentToMenu", sender: nil)
    }
}
