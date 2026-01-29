//
//  DataModel.swift
//  restaurantApp
//
//  Created by svijayvrat on 28/01/26.
//

import Foundation
import UIKit

class DataModel{
    
    private var restaurants: [Restaurant] = []
    private var dishes: [Dish] = []
    
    init(){
        restaurants = loadSampleData()
    }
    
    func getRestaurants() -> [Restaurant] {
        return restaurants
    }
    
    func getRestaurantForCuisine(cuisine: Cuisine) -> [Restaurant]{
        restaurants.filter { restaurant in
            restaurant.cuisine.contains(cuisine)
        }
    }
    
    func getCuisine() -> [Cuisine] {
        Cuisine.allCases
    }
    
    func loadSampleData() -> [Restaurant] {
        return [
            // MARK: - American
            Restaurant(
                id: UUID(),
                name: "All American Diner",
                location: "Kolkata",
                images: [
                    "all_american_diner_dining",
                    "all_american_diner_exterior",
                    "all_american_diner_interior"
                ],
                cuisine: [.american],
                menu: [
                    Dish(id: UUID(), name: "Apple Pie", images: ["apple_pie"], description: "Classic American apple pie with cinnamon and flaky crust", price: 180.0, cuisine: .american),
                    Dish(id: UUID(), name: "Bacon Cheeseburger", images: ["bacon_cheeseburger"], description: "Juicy beef patty with crispy bacon and melted cheese", price: 320.0, cuisine: .american),
                    Dish(id: UUID(), name: "Brownie Sundae", images: ["brownie_sundae"], description: "Warm chocolate brownie with vanilla ice cream and fudge", price: 220.0, cuisine: .american),
                    Dish(id: UUID(), name: "Chicken Tenders", images: ["chicken_tenders"], description: "Crispy breaded chicken strips served with dipping sauce", price: 280.0, cuisine: .american),
                    Dish(id: UUID(), name: "Clam Chowder", images: ["clam_chowder"], description: "Creamy New England style clam chowder in bread bowl", price: 260.0, cuisine: .american),
                    Dish(id: UUID(), name: "Classic Burger", images: ["classic_burger"], description: "Traditional beef burger with lettuce, tomato and special sauce", price: 240.0, cuisine: .american),
                    Dish(id: UUID(), name: "Hot Dog", images: ["hot_dog"], description: "Grilled sausage in soft bun with mustard and relish", price: 150.0, cuisine: .american),
                    Dish(id: UUID(), name: "Mac Cheese", images: ["mac_cheese"], description: "Creamy macaroni pasta with three cheese blend", price: 200.0, cuisine: .american),
                    Dish(id: UUID(), name: "Milkshake", images: ["milkshake"], description: "Thick hand-spun milkshake with whipped cream", price: 160.0, cuisine: .american),
                    Dish(id: UUID(), name: "Onion Rings", images: ["onion_rings"], description: "Crispy battered onion rings with ranch dip", price: 140.0, cuisine: .american),
                    Dish(id: UUID(), name: "Bar Area", images: ["bar_area"], description: "Premium bar selection and beverages", price: 350.0, cuisine: .american)
                ]
            ),
            Restaurant(
                id: UUID(),
                name: "American Grill House",
                location: "Hyderabad",
                images: [
                    "american_grill_house_dining",
                    "american_grill_house_exterior",
                    "american_grill_house_interior"
                ],
                cuisine: [.american],
                menu: [
                    Dish(id: UUID(), name: "Bbq Ribs", images: ["bbq_ribs"], description: "Slow-smoked pork ribs with BBQ sauce", price: 450.0, cuisine: .american),
                    Dish(id: UUID(), name: "Buffalo Wings", images: ["buffalo_wings"], description: "Spicy chicken wings with blue cheese dip", price: 280.0, cuisine: .american),
                    Dish(id: UUID(), name: "Caesar Salad", images: ["caesar_salad"], description: "Crisp romaine lettuce with parmesan and croutons", price: 220.0, cuisine: .american),
                    Dish(id: UUID(), name: "Coleslaw", images: ["coleslaw"], description: "Creamy cabbage and carrot salad", price: 100.0, cuisine: .american),
                    Dish(id: UUID(), name: "Corn Cob", images: ["corn_cob"], description: "Grilled sweet corn with butter and spices", price: 120.0, cuisine: .american),
                    Dish(id: UUID(), name: "Fried Chicken", images: ["fried_chicken"], description: "Buttermilk fried chicken with southern spices", price: 320.0, cuisine: .american),
                    Dish(id: UUID(), name: "Grilled Salmon", images: ["grilled_salmon"], description: "Fresh Atlantic salmon with herbs and lemon", price: 480.0, cuisine: .american),
                    Dish(id: UUID(), name: "Loaded Fries", images: ["loaded_fries"], description: "Crispy fries topped with cheese and bacon", price: 180.0, cuisine: .american),
                    Dish(id: UUID(), name: "Philly Cheesesteak", images: ["philly_cheesesteak"], description: "Thin sliced steak with melted cheese on hoagie roll", price: 340.0, cuisine: .american),
                    Dish(id: UUID(), name: "Pulled Pork", images: ["pulled_pork"], description: "Slow-cooked pulled pork with coleslaw", price: 300.0, cuisine: .american),
                    Dish(id: UUID(), name: "Sweet Potato Fries", images: ["sweet_potato_fries"], description: "Crispy sweet potato fries with chipotle mayo", price: 160.0, cuisine: .american),
                    Dish(id: UUID(), name: "Tbone Steak", images: ["tbone_steak"], description: "Grilled T-bone steak with garlic butter", price: 650.0, cuisine: .american)
                ]
            ),

            // MARK: - Chinese
            Restaurant(
                id: UUID(),
                name: "China Palace",
                location: "Delhi",
                images: [
                    "china_palace_dining",
                    "china_palace_exterior",
                    "china_palace_interior"
                ],
                cuisine: [.chinese],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Dragon Wok",
                location: "Mumbai",
                images: [
                    "dragon_wok_dining",
                    "dragon_wok_exterior",
                    "dragon_wok_interior"
                ],
                cuisine: [.chinese],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Shanghai Express",
                location: "Bangalore",
                images: [
                    "shanghai_express_dining",
                    "shanghai_express_exterior",
                    "shanghai_express_interior"
                ],
                cuisine: [.chinese],
                menu: []
            ),

            // MARK: - French
            Restaurant(
                id: UUID(),
                name: "Le Français",
                location: "Chandigarh",
                images: [
                    "le_francais_dining",
                    "le_francais_exterior",
                    "le_francais_interior"
                ],
                cuisine: [.french],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Paris Café",
                location: "Pondicherry",
                images: [
                    "paris_cafe_dining",
                    "paris_cafe_exterior",
                    "paris_cafe_interior"
                ],
                cuisine: [.french],
                menu: []
            ),

            // MARK: - Italian
            Restaurant(
                id: UUID(),
                name: "La Bella Italia",
                location: "Pune",
                images: [
                    "la_bella_italia_dining",
                    "la_bella_italia_exterior",
                    "la_bella_italia_interior"
                ],
                cuisine: [.italian],
                menu: [
                    Dish(id: UUID(), name: "Arancini", images: ["arancini"], description: "Crispy fried rice balls with mozzarella center", price: 240.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Bruschetta", images: ["bruschetta"], description: "Grilled bread with tomato, basil and olive oil", price: 180.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Caprese Salad", images: ["caprese_salad"], description: "Fresh mozzarella, tomatoes and basil with balsamic", price: 220.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Gelato Trio", images: ["gelato_trio"], description: "Three scoops of artisanal Italian ice cream", price: 200.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Gnocchi Pesto", images: ["gnocchi_pesto"], description: "Potato dumplings with basil pesto sauce", price: 320.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Margherita Pizza", images: ["margherita_pizza"], description: "Classic pizza with tomato, mozzarella and basil", price: 280.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Minestrone Soup", images: ["minestrone_soup"], description: "Hearty vegetable soup with pasta and beans", price: 160.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Osso Buco", images: ["osso_buco"], description: "Braised veal shanks with vegetables and broth", price: 480.0, cuisine: .italian)
                ]
            ),
            Restaurant(
                id: UUID(),
                name: "Roma Trattoria",
                location: "Mumbai",
                images: [
                    "roma_trattoria_dining",
                    "roma_trattoria_exterior",
                    "roma_trattoria_interior"
                ],
                cuisine: [.italian],
                menu: [
                    Dish(id: UUID(), name: "Cannoli", images: ["cannoli"], description: "Crispy pastry tubes with sweet ricotta filling", price: 190.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Chicken Parmigiana", images: ["chicken_parmigiana"], description: "Breaded chicken with marinara and melted cheese", price: 360.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Fettuccine Alfredo", images: ["fettuccine_alfredo"], description: "Creamy pasta with butter and parmesan sauce", price: 300.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Lasagna Bolognese", images: ["lasagna_bolognese"], description: "Layered pasta with meat sauce and béchamel", price: 340.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Panna Cotta", images: ["panna_cotta"], description: "Creamy vanilla custard with berry compote", price: 210.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Penne Arrabbiata", images: ["penne_arrabbiata"], description: "Penne pasta in spicy tomato garlic sauce", price: 260.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Risotto Funghi", images: ["risotto_funghi"], description: "Creamy rice with wild mushrooms and parmesan", price: 380.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Spaghetti Carbonara", images: ["spaghetti_carbonara"], description: "Classic pasta with egg, cheese and pancetta", price: 320.0, cuisine: .italian)
                ]
            ),
            Restaurant(
                id: UUID(),
                name: "Pure Italia",
                location: "Delhi",
                images: [
                    "pure_italia_dining",
                    "pure_italia_exterior",
                    "pure_italia_interior"
                ],
                cuisine: [.italian],
                menu: [
                    Dish(id: UUID(), name: "Mozzarella Sticks", images: ["mozzarella_sticks"], description: "Fried mozzarella with marinara dipping sauce", price: 220.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Prosciutto Melone", images: ["prosciutto_melone"], description: "Cured ham with fresh cantaloupe melon", price: 360.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Quattro Formaggi", images: ["quattro_formaggi"], description: "Four cheese pizza with mozzarella, gorgonzola, parmesan and fontina", price: 340.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Ravioli Ricotta", images: ["ravioli_ricotta"], description: "Stuffed pasta with ricotta and spinach in sage butter", price: 300.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Saltimbocca", images: ["saltimbocca"], description: "Veal escalope with prosciutto and sage leaves", price: 420.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Seafood Linguine", images: ["seafood_linguine"], description: "Pasta with shrimp, mussels and calamari in white wine", price: 450.0, cuisine: .italian),
                    Dish(id: UUID(), name: "Tiramisu", images: ["tiramisu"], description: "Coffee soaked ladyfingers with mascarpone cream", price: 240.0, cuisine: .italian)
                ]
            ),

            // MARK: - Japanese
            Restaurant(
                id: UUID(),
                name: "Kyoto Kitchen",
                location: "Bangalore",
                images: [
                    "kyoto_kitchen_dining",
                    "kyoto_kitchen_exterior",
                    "kyoto_kitchen_interior"
                ],
                cuisine: [.japanese],
                menu: []
            ),

            // MARK: - Korean
            Restaurant(
                id: UUID(),
                name: "Seoul Garden",
                location: "Delhi",
                images: [
                    "seoul_garden_dining",
                    "seoul_garden_exterior",
                    "seoul_garden_interior"
                ],
                cuisine: [.korean],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Busan Bowl",
                location: "Mumbai",
                images: [
                    "busan_bowl_dining",
                    "busan_bowl_exterior",
                    "busan_bowl_interior"
                ],
                cuisine: [.korean],
                menu: []
            ),

            // MARK: - Mexican
            Restaurant(
                id: UUID(),
                name: "Casa Mexico",
                location: "Jaipur",
                images: [
                    "casa_mexico_dining",
                    "casa_mexico_exterior",
                    "casa_mexico_interior"
                ],
                cuisine: [.mexican],
                menu: [
                    Dish(id: UUID(), name: "Nachos Supreme", images: ["nachos_supreme"], description: "Loaded nachos with cheese, jalapeños and sour cream", price: 220.0, cuisine: .mexican)
                ]
            ),
            Restaurant(
                id: UUID(),
                name: "Cancun Cantina",
                location: "Goa",
                images: [
                    "cancun_cantina_dining",
                    "cancun_cantina_exterior",
                    "cancun_cantina_interior"
                ],
                cuisine: [.mexican],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Guadalajara Grill",
                location: "Indore",
                images: [
                    "guadalajara_grill_dining",
                    "guadalajara_grill_exterior",
                    "guadalajara_grill_interior"
                ],
                cuisine: [.mexican],
                menu: []
            ),

            // MARK: - Mughlai
            Restaurant(
                id: UUID(),
                name: "Mughlai Mahal",
                location: "Lucknow",
                images: [
                    "mughlai_mahal_dining",
                    "mughlai_mahal_exterior",
                    "mughlai_mahal_interior"
                ],
                cuisine: [.mughlai],
                menu: [
                    Dish(id: UUID(), name: "Biryani", images: ["biryani"], description: "Fragrant basmati rice with saffron and tender meat", price: 320.0, cuisine: .mughlai),
                    Dish(id: UUID(), name: "Butter Chicken", images: ["butter_chicken"], description: "Tandoori chicken in rich tomato butter gravy", price: 340.0, cuisine: .mughlai),
                    Dish(id: UUID(), name: "Chicken Korma", images: ["chicken_korma"], description: "Mild curry with yogurt, cream and nut paste", price: 300.0, cuisine: .mughlai),
                    Dish(id: UUID(), name: "Gulab Jamun", images: ["gulab_jamun"], description: "Deep fried milk solids soaked in rose sugar syrup", price: 120.0, cuisine: .mughlai),
                    Dish(id: UUID(), name: "Kulfi", images: ["kulfi"], description: "Traditional Indian ice cream with cardamom and pistachio", price: 100.0, cuisine: .mughlai),
                    Dish(id: UUID(), name: "Rogan Josh", images: ["rogan_josh"], description: "Aromatic lamb curry with Kashmiri red chilies", price: 380.0, cuisine: .mughlai)
                ]
            ),

            // MARK: - North Indian
            Restaurant(
                id: UUID(),
                name: "Delhi Darbar",
                location: "Delhi",
                images: [
                    "delhi_darbar_dining",
                    "delhi_darbar_exterior",
                    "delhi_darbar_interior"
                ],
                cuisine: [.north_indian],
                menu: [
                    Dish(id: UUID(), name: "Aloo Gobi", images: ["aloo_gobi"], description: "Potato and cauliflower curry with turmeric and spices", price: 180.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Chole Bhature", images: ["chole_bhature"], description: "Spicy chickpea curry with deep fried bread", price: 160.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Dal Makhani", images: ["dal_makhani"], description: "Creamy black lentils simmered overnight", price: 200.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Malai Kofta", images: ["malai_kofta"], description: "Paneer and potato dumplings in cream gravy", price: 240.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Naan Bread", images: ["naan_bread"], description: "Leavened bread baked in tandoor oven", price: 60.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Palak Paneer", images: ["palak_paneer"], description: "Cottage cheese cubes in spinach gravy", price: 220.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Samosa", images: ["samosa"], description: "Crispy pastry filled with spiced potatoes and peas", price: 40.0, cuisine: .north_indian)
                ]
            ),
            Restaurant(
                id: UUID(),
                name: "Punjab Express",
                location: "Amritsar",
                images: [
                    "punjab_express_dining",
                    "punjab_express_exterior",
                    "punjab_express_interior"
                ],
                cuisine: [.north_indian],
                menu: [
                    Dish(id: UUID(), name: "Chicken Vindaloo", images: ["chicken_vindaloo"], description: "Spicy tangy chicken curry with vinegar and potatoes", price: 280.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Fish Curry", images: ["fish_curry"], description: "Tilapia fillets in onion tomato gravy with mustard", price: 300.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Paneer Tikka", images: ["paneer_tikka"], description: "Grilled cottage cheese cubes with bell peppers", price: 260.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Paratha", images: ["paratha"], description: "Layered wheat flatbread with butter", price: 50.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Pav Bhaji", images: ["pav_bhaji"], description: "Spiced vegetable mash with buttered bread rolls", price: 140.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Raita", images: ["raita"], description: "Yogurt dip with cucumber, tomato and cumin", price: 60.0, cuisine: .north_indian),
                    Dish(id: UUID(), name: "Tandoori Chicken", images: ["tandoori_chicken"], description: "Yogurt marinated chicken roasted in clay oven", price: 320.0, cuisine: .north_indian)
                ]
            ),

            // MARK: - South Indian
            Restaurant(
                id: UUID(),
                name: "South India Café",
                location: "Chennai",
                images: [
                    "south_india_café_dining",
                    "south_india_café_exterior",
                    "south_india_café_interior"
                ],
                cuisine: [.south_indian],
                menu: [
                    Dish(id: UUID(), name: "Idli Sambar", images: ["idli_sambar"], description: "Steamed rice cakes with lentil soup and chutneys", price: 80.0, cuisine: .south_indian),
                    Dish(id: UUID(), name: "Masala Dosa", images: ["masala_dosa"], description: "Crispy rice crepe with spiced potato filling", price: 120.0, cuisine: .south_indian),
                    Dish(id: UUID(), name: "Uttapam", images: ["uttapam"], description: "Thick rice pancake with onion and tomato toppings", price: 100.0, cuisine: .south_indian),
                    Dish(id: UUID(), name: "Vada Pav", images: ["vada_pav"], description: "Spicy potato fritter in bread with chutneys", price: 60.0, cuisine: .south_indian)
                ]
            ),

            // MARK: - Thai
            Restaurant(
                id: UUID(),
                name: "Thai Orchid",
                location: "Goa",
                images: [
                    "thai_orchid_dining",
                    "thai_orchid_exterior",
                    "thai_orchid_interior"
                ],
                cuisine: [.thai],
                menu: []
            ),

            // MARK: - Vietnamese
            Restaurant(
                id: UUID(),
                name: "Pho Paradise",
                location: "Bangalore",
                images: [
                    "pho_paradise_dining",
                    "pho_paradise_exterior",
                    "pho_paradise_interior"
                ],
                cuisine: [.vietnamese],
                menu: []
            ),
            Restaurant(
                id: UUID(),
                name: "Saigon Spice",
                location: "Mumbai",
                images: [
                    "saigon_spice_dining",
                    "saigon_spice_exterior",
                    "saigon_spice_interior"
                ],
                cuisine: [.vietnamese],
                menu: []
            )
        ]
    }
    
    
}

