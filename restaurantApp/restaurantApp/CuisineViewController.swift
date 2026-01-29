//
//  ViewController.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import UIKit

class CuisineViewController: UIViewController {
    
    @IBOutlet weak var cuisineCollectionView: UICollectionView!
    
    var dataModel: DataModel!
    var cuisines: [Cuisine] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cuisines = dataModel.getCuisine()
        // Do any additional setup after loading the view.
        cuisineCollectionView.register(UINib(nibName: "CuisineCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cuisine_cell")
        
        guard let layout = cuisineCollectionView.collectionViewLayout as? UICollectionViewFlowLayout else{
            return
        }
        
        layout.estimatedItemSize = .zero
        layout.itemSize = CGSize(width: self.view.bounds.width, height: 300)
        
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = cuisineCollectionView.indexPathsForSelectedItems else{
            return
        }
        guard let selectedItemIndexPath = indexPath.first else{
            return
        }
        
        let cuisine = cuisines[selectedItemIndexPath.row]
        
        if let destinationVC = segue.destination as? RestaurantViewController {
            //send the cuisine to restaurant vc
            destinationVC.selectedCuisine = cuisine
            
            //send the data model to restaurant vc
            destinationVC.dataModel = dataModel
        }
    }


}
extension CuisineViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cuisines.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //creating cell for collection view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisine_cell", for: indexPath)
        let cuisine = dataModel.getCuisine()[indexPath.row]
        
        if let cuisineCell = cell as? CuisineCollectionViewCell{
            cuisineCell.configureCell(cuisine: cuisine)
        }
        return cell
    }
    
    
}

extension CuisineViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "cuisineToRestaurant", sender: nil)
    }
}
