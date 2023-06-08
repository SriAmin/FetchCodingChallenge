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

struct ContentView: View {
    var mealService: MealDBService = MealDBService()
    
    var body: some View {
        VStack {
            Button {
                Task {
                    await print(mealService.getDessert())
                }
            } label: {
                Text("Fetch Joke")
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
