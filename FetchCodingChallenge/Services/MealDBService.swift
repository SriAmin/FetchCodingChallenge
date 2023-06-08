//
//  MealDBService.swift
//  FetchCodingChallenge
//
//  Service file that has the main responsibility to grab data from
//  TheMealDB API, it'll contain functions that communicate and return
//  data from TheMealDB API
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

class MealDBService : NSObject {
    //Base API URL used in all the functions within the service
    var apiURL: String = "https://themealdb.com/api/json/v1/1/"
    
    override init() {
        super.init()
    }
    
    // getDessert()
    // This will grab a list of meals that are related to the Dessert category
    // Return -> A Meals model that contains a list of Meal objects
    func getDessert() async -> Meals {
        let (data, _) = try! await URLSession.shared.data(from: URL(string:apiURL+"filter.php?c=Dessert")!)
        let decodedResponse = try? JSONDecoder().decode(Meals.self, from: data)
        return decodedResponse!
    }
}
