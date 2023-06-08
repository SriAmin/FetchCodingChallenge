//
//  MealModel.swift
//  FetchCodingChallenge
//
//  This meal model will handle containing and structuring the data that we acquire from the Meal DB API
//  it contains several properties with a constructor that initalizes the values
//
//  mealName | Type: String | The unique name of the meal
//  instructions | Type: String | A large string that describes the process of making the meal
//  ingredients | Type: 2D String Array | 2D Array that contains pairs of ingredients (String) and measurements (String)
//
//  Created by Sri Amin on 2023-06-07.
//

import Foundation

class Meal: NSObject {
    var mealName: String
    var instructions: String
    var ingredients = [[String]]()
    
    // Contructor function that intializes the mealName, instructions, and ingredients properties
    init(mealName: String, instructions: String, ingredients: [[String]]) {
        self.mealName = mealName
        self.instructions = instructions
        self.ingredients = ingredients
    }
}
