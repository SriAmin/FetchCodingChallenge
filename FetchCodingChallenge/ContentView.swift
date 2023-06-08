//
//  ContentView.swift
//  FetchCodingChallenge
//
//  Created by Sri Amin on 2023-06-07.
//

import SwiftUI

struct ContentView: View {
    var testMeal = Meal(mealName: "Timbits", instructions: "Make Timbits", ingredients: [["Dough", "2 pounds"]])
    var body: some View {
        VStack {
            Text(testMeal.mealName)
            Text(testMeal.instructions)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
