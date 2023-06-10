//
//  MealItemViewModel.swift
//  FetchCodingChallenge
//
//  MealItemViewModel is the controller class that handles the link between the
//  MealItemView and the MealItemModel. This also has the MealDBService that allows the ViewModel
//  to communicate with MealDB API, grab the specific meal, and send it to the MealItemView
//
//  mealDBService | Type: MealDBService | Service Controller that communicates with TheMealDB API
//  mealData | Type: MealItemArray | MealItemArray model that contains the getDessertItem() response from TheMealDB API
//
//  Created by Sri Amin on 2023-06-08.
//

import Foundation

class MealItemViewModel : NSObject, ObservableObject {
    private var mealDBService : MealDBService!
    
    @Published private(set) var mealData : MealItemArray! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
    }
    
    // Init()
    // Intializes the ViewModel, controller field, and grabs the dessert item that has the specific mealId
    // mealId | Type: String | String that represents the specific mealId inside TheMealDB API
    init(mealId: String) {
        super.init()
        self.mealDBService = MealDBService()
        self.mealData = MealItemArray(meals: [])
        getDessertItem(mealId: mealId)
    }
    
    // Communicates with the Controllers, get the specific meal, and set the mealData field to TheMealDB's response
    // mealId | Type: String | Id of meal that gets sent to the API controller to find the specific meal
    func getDessertItem(mealId: String) {
        self.mealDBService.getDessertItem(id: mealId) { (mealData) in
            self.mealData = mealData
        }
    }
}
