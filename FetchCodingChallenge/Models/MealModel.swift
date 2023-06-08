//
//  MealModel.swift
//  FetchCodingChallenge
//
//  This meal model will handle containing and structuring the data that we acquire from the Meal DB API
//  it contains several properties with a constructor that initalizes the values
//
//  id | Type: String | The unique id that comes from the Meal DB API
//  mealName | Type: String | The unique name of the meal
//  mealImage | Type: String | Image URI that contains the thumbnail of the meal
//  instructions | Type: String | A large string that describes the process of making the meal
//  ingredients | Type: 2D String Array | 2D Array that contains pairs of ingredients (String) and measurements (String)
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

struct Meals: Codable {
    let meals: [Meal]
}

struct Meal: Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}
