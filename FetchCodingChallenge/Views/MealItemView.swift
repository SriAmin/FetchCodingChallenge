//
//  MealItemView.swift
//  FetchCodingChallenge
//
//  This will handle all UI elements and connections with the MealItemViewModel
//  It's main purpose is to show a detailed description of a certain meal,
//  this is all possible with a given mealID and a call to TheMealDB
//
//  Created by Sri Amin on 2023-06-08.
//

import SwiftUI

struct MealItemView: View {
    @StateObject var viewModel : MealItemViewModel;
    
    // Init()
    // Intializes the view with a given ID, it also sets the viewmodel and grabs the meal data
    init(mealId: String) {
        self._viewModel = StateObject(wrappedValue: MealItemViewModel(mealId: mealId))
    }
    
    // getIngredient()
    // Sets up an optional string array with the corresponding ingredient and measurement given
    // index | Type: Int | index that represents which ingredient and measurement to grab
    // Return -> [String?] | Optional string array with an ingredient and measurement
    func getIngredient(index : Int) -> [String?] {
        let tempMeal = viewModel.mealData.meals[0]
        var tempArray : [String?]
        switch index {
        case 1:
            tempArray = [tempMeal.strIngredient1, tempMeal.strMeasure1]
        case 2:
            tempArray = [tempMeal.strIngredient2, tempMeal.strMeasure2]
        case 3:
            tempArray = [tempMeal.strIngredient3, tempMeal.strMeasure3]
        case 4:
            tempArray = [tempMeal.strIngredient4, tempMeal.strMeasure4]
        case 5:
            tempArray = [tempMeal.strIngredient5, tempMeal.strMeasure5]
        case 6:
            tempArray = [tempMeal.strIngredient6, tempMeal.strMeasure6]
        case 7:
            tempArray = [tempMeal.strIngredient7, tempMeal.strMeasure7]
        case 8:
            tempArray = [tempMeal.strIngredient8, tempMeal.strMeasure8]
        case 9:
            tempArray = [tempMeal.strIngredient9, tempMeal.strMeasure9]
        case 10:
            tempArray = [tempMeal.strIngredient10, tempMeal.strMeasure10]
        case 11:
            tempArray = [tempMeal.strIngredient11, tempMeal.strMeasure11]
        case 12:
            tempArray = [tempMeal.strIngredient12, tempMeal.strMeasure12]
        case 13:
            tempArray = [tempMeal.strIngredient13, tempMeal.strMeasure13]
        case 14:
            tempArray = [tempMeal.strIngredient14, tempMeal.strMeasure14]
        case 15:
            tempArray = [tempMeal.strIngredient15, tempMeal.strMeasure15]
        case 16:
            tempArray = [tempMeal.strIngredient16, tempMeal.strMeasure16]
        case 17:
            tempArray = [tempMeal.strIngredient17, tempMeal.strMeasure17]
        case 18:
            tempArray = [tempMeal.strIngredient18, tempMeal.strMeasure18]
        case 19:
            tempArray = [tempMeal.strIngredient19, tempMeal.strMeasure19]
        case 20:
            tempArray = [tempMeal.strIngredient20, tempMeal.strMeasure20]
        default:
            return []
        }
        return tempArray
    }
    
    var body: some View {
        NavigationView() {
            ScrollView {
                //Displays a circular progress view when the data is being loaded and grabbed from the API
                VStack {
                    if viewModel.mealData.meals.count == 0 {
                        ProgressView()
                    } else {
                        AsyncImage(url: URL(string: viewModel.mealData.meals[0].strMealThumb), scale: 2).border(.purple, width: 5)
                        Text(viewModel.mealData.meals[0].strMeal).font(.system(size: 24)).bold()
                        Spacer()
                        //From 1 to 20, display the meals ingredient and measurement, don't display the pair if the value is returned to be empty ("") or null
                        Text("-- Ingredients --")
                        ForEach(1..<21) { i in
                            let ingredients = getIngredient(index: i)
                            if ingredients[0] ?? "" != ""{
                                HStack{
                                    Spacer()
                                    Text(ingredients[0] ?? "")
                                    Spacer()
                                    Text(ingredients[1] ?? "")
                                    Spacer()
                                }

                            }
                        }
                        Divider()
                        Text(viewModel.mealData.meals[0].strInstructions).padding([.top, .horizontal], 20)
                        
                    }
                }
            }
        }
    }
}

struct MealItemView_Previews: PreviewProvider {
    static var previews: some View {
        MealItemView(mealId: "53062")
    }
}
