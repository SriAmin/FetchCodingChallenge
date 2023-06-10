//
//  ContentViewModel.swift
//  FetchCodingChallenge
//
//  ContentViewModel is the controller class that handles the link between the
//  ContentView and the MealModel. This also has the MealDBService that allows the ViewModel
//  to communicate with MealDB API, grab all the Desserts, and send them to the View
//
//  mealDBService | Type: MealDBService | Service Controller that communicates with TheMealDB API
//  mealData | Type: Meals | Meals model that contains the getDessert() response from TheMealDB API
//
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

class ContentViewModel : NSObject, ObservableObject {
    
    private var mealDBService : MealDBService!
    
    @Published private(set) var mealData : Meals! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    // Init()
    // Intializes the ViewModel, controller field, and grab the desserts
    override init() {
        super.init()
        self.mealDBService = MealDBService()
        self.mealData = Meals(meals: [])
        grabDessertItems()
    }
    
    // Communicates with the Controllers, gets the desserts, and set the mealData field to its responses value
    func grabDessertItems() {
        self.mealDBService.getDesserts { (mealData) in
            self.mealData = mealData
        }
    }
}
