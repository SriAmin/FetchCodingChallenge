//
//  MealDBService.swift
//  FetchCodingChallenge
//
//  Service file that has the main responsibility to grab data from
//  TheMealDB API, it'll contain functions that communicate and return
//  data from TheMealDB API
//
//  apiURL | Type: String | Base API URL used in all the functions within the service
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

class MealDBService : NSObject {
    var apiURL: String = "https://themealdb.com/api/json/v1/1/"
    
    override init() {
        super.init()
    }
    
    // getDesserts()
    // This will grab a list of meals that are related to the Dessert category
    // Return -> A Meals model that contains a list of Meal objects
    func getDesserts(completion : @escaping (Meals) -> ()){
        URLSession.shared.dataTask(with: URL(string: apiURL+"filter.php?c=Dessert")!) { data, urlResponse, error in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let mealData = try! jsonDecoder.decode(Meals.self, from: data)
                    completion(mealData)
            }
        }.resume()
    }
}
