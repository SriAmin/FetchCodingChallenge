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
    
    //Intializes the view with a given ID, it also sets the viewmodel and grabs the meal data
    init(mealId: String) {
        self._viewModel = StateObject(wrappedValue: MealItemViewModel(mealId: mealId))
    }
    
    var body: some View {
        NavigationView() {
            ScrollView {
                VStack {
                    if viewModel.mealData.meals.count == 0 {
                        ProgressView()
                    } else {
                        Text(viewModel.mealData.meals[0].strMeal)
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
