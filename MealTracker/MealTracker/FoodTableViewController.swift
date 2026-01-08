//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by GEU on 08/01/26.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals:[Meal]{
        var breakfast:Meal = Meal(name: "Breakfast",food: [])
        var lunch:Meal = Meal(name: "lunch",food: [])
        var dinner:Meal = Meal(name: "dinner",food: [])
        breakfast.food.append(Food(name: "Egg",description: "Hard Boiled"))
        breakfast.food.append(Food(name: "Apple Pie", description: "Sweet and Delicious"))
        breakfast.food.append(Food(name: "Pancakes", description: "Fluffy stack"))
        lunch.food.append(Food(name: "Apple", description: "Fresh sliced"))
        lunch.food.append(Food(name: "Rice", description: "Steamed white"))
        lunch.food.append(Food(name: "Yogurt", description: "Greek plain"))
        dinner.food.append(Food(name: "Toast", description: "Buttered slices"))
        dinner.food.append(Food(name: "Pasta", description: "Creamy alfredo"))
        dinner.food.append(Food(name: "Cheese", description: "Sharp cheddar"))
        return [breakfast,lunch,dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        // Configure the cell...
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}
