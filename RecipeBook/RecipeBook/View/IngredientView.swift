//
//  IngredientView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct IngredientView: View {
    
    var viewModel = IngredientViewModel(ingredients: [IngredientViewModel.Ingredient(image: "pasta", ingredient: "ingredient1", quantity: "quantity")])
    
    var body: some View {
        
        VStack(alignment : .leading)
        {
          Text("Ingredients")
            
            VStack
            {
                ForEach(viewModel.ingredients, id: \.id){ ingredient in
                HStack(spacing : 50)
                {
                 HStack
                {
                Image(ingredient.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24,height: 24)
                Text(ingredient.ingredient)
                .font(.system(size : 12))
                }
                HStack
                {
                Text(ingredient.quantity)
                .font(.system(size : 10))
                }
                
                }
            }
                
            }
        }
    }
}
