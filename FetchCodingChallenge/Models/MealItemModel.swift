//
//  MealItemModel.swift
//  FetchCodingChallenge
//
//  This file contains two structs that act as the models for getting a dessert item
//  Represents the meal item found within TheMealDB API
//
//  Created by Sri Amin on 2023-06-08.
//

import Foundation

// MealItemArray
// Model that contains a list which has one MealItem model, codable with TheMealDBAPI
//
// meals | Type: [MealItem] | A list of one MealItem acquired from the TheMealDB API
struct MealItemArray: Decodable {
    let meals: [MealItem]
}

// MealItem
// Model that represents the a more advanced description of a meal, codable with TheMealDB API
//
//  idMeal | Type: String | The unique id that comes from the Meal DB API
//  strMeal | Type: String | The unique name of the meal
//  strMealThumb | Type: String | Image URI that contains the thumbnail of the meal
//  strIngredient | Type: String? | String that represents the ingredients to make the meal, optional in case value in API is null
//  strMeasure | Type: String? | String that represents the amount of its corresponding ingredient to make the meal, optional in case value in API is null
struct MealItem: Decodable {
    
    let strMeal, strMealThumb, idMeal, strInstructions: String
    let strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5, strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10, strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15, strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20: String?
    let strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5, strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10, strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15, strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20: String?
}
