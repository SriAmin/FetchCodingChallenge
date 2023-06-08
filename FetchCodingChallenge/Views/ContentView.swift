//
//  ContentView.swift
//  FetchCodingChallenge
//
//  This will handle all UI elements and connections with the ContentViewModel
//  It's main purpose is to show a list of dessert items and allow a user to click
//  on an item to get more information
//
//  Created by Sri Amin on 2023-06-07.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack{
            ScrollView{
                //For each Meal inside meal data, display its thumbnail, and title
                ForEach(viewModel.mealData.meals, content: { meal in
                    HStack{
                        AsyncImage(url: URL(string: meal.strMealThumb), scale: 5)
                        Spacer()
                        Text(meal.strMeal)
                        Spacer()
                    }.onTapGesture {
                        print(meal)
                    }
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    var mealService : MealDBService = MealDBService()

    static var previews: some View {
        ContentView()
    }
}
