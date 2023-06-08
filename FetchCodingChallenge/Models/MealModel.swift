//
//  MealModel.swift
//  FetchCodingChallenge
//
//  This file contains two models that will handle containing and structuring the data
//  that we acquire from the Meal DB API
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

// Meals
// Model that contains a list of Meal objects, codable with TheMealDB API
//
// meals | Type: [Meal] | A list of the meal objects acquired from the TheMealDB API
struct Meals: Codable {
    let meals: [Meal]
}

// Meal
// Model that represents the basic description of a meal, codable with TheMealDB API
//
//  idMeal | Type: String | The unique id that comes from the Meal DB API
//  strMeal | Type: String | The unique name of the meal
//  strMealThumb | Type: String | Image URI that contains the thumbnail of the meal
struct Meal: Identifiable, Codable {
    let strMeal, strMealThumb, idMeal: String
    var id: String { idMeal }

}
