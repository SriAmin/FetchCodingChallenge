//
//  ContentView.swift
//  FetchCodingChallenge
//
//  Created by Sri Amin on 2023-06-07.
//

import SwiftUI

struct ContentView: View {
    var mealArray : [Meal] =
    [Meal(id: "1", mealName: "Timbits", mealImage: "https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg", instructions: "Make Timbits", ingredients: [["Dough", "2 pounds"]]),
     Meal(id: "2", mealName: "Donut", mealImage: "https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg", instructions: "Make Donut", ingredients: [["Dough", "4 pounds"]]),
     Meal(id: "3", mealName: "Egg", mealImage: "https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg", instructions: "Make Egg", ingredients: [["Dough", "2 pounds"]]),
     Meal(id: "4", mealName: "Pancake", mealImage: "https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg", instructions: "Make Pancake", ingredients: [["Dough", "2 pounds"]])]
    
    var body: some View {
        VStack {
            ForEach(mealArray, content: { meal in
                HStack {
                    AsyncImage(url: URL(string: meal.mealImage), scale: 5)
                    Spacer()
                    Text(meal.mealName)
                    Spacer()

                }.onTapGesture {
                    print(meal.id)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
