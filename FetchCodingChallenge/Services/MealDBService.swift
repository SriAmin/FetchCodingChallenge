//
//  MealDBService.swift
//  FetchCodingChallenge
//
//  Service file that has the main responsibility to grab data from
//  TheMealDB API, it'll contain functions that communicate and return
//  data from TheMealDB API
//
//  apiURL | Type: String | Base API URL used in all the functions within the service
//  jsonDecoder | Type: JSONDecoded | Object that handles translating JSON into Xcode Struct Models
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

class MealDBService : NSObject {
    var apiURL: String = "https://themealdb.com/api/json/v1/1/"
    let jsonDecoder = JSONDecoder()
    override init() {
        super.init()
    }
    
    // getDesserts()
    // This will grab a list of meals that are related to the Dessert category
    // Return -> A Meals model that contains a list of Meal objects
    func getDesserts(completion : @escaping (Meals) -> ()){
        URLSession.shared.dataTask(with: URL(string: apiURL+"filter.php?c=Dessert")!) { data, urlResponse, error in
            if let error = error {
                print(error)
            } else {
                if let data = data,
                   let mealData = try? self.jsonDecoder.decode(Meals.self, from: data) {
                    completion(mealData)
                }
            }
        }.resume()
    }
    
    //getDessertItem()
    //This will grab a meal object that has the same ID of the parameter given when called
    // id | Type: String | mealId thats associated with every meal in TheMealDB API
    // Return -> MealItemArray model that contains a list which has one Meal objects
    func getDessertItem(id:String, completion : @escaping (MealItemArray) -> ()){
        URLSession.shared.dataTask(with: URL(string: apiURL+"lookup.php?i="+id)!) { [self] data, urlResponse, error in
            if let error = error {
                print(error)
            } else {
                if let data = data,
                   let mealData = try? self.jsonDecoder.decode(MealItemArray.self, from: data) {
                    completion(mealData)
                }
            }
        }.resume()
    }
}
