//
//  RecipeOfWeekView.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct RecipeOfWeekView: View {
    
    var viewModel = RecipeSectionViewModel(title: "Recipe of the week", button: "see all", recipeList: [
        RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
        RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
        RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
        RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4")])
    
    var body: some View {
        
        
        VStack(alignment : .leading)
        {
            HStack(spacing : 10)
            {
             Text(self.viewModel.title)
                
                Button(viewModel.button, action : {print("")})
            }
            
             ScrollView(.horizontal, showsIndicators: false)
            {
                HStack(spacing : 6)
                {
                    ForEach(viewModel.recipeList, id: \.id) { recipe in
                    SmallRecipeCell(viewModel: recipe)
                }
            }
                }
        }
    }
}

struct RecipeOfWeekView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeOfWeekView()
    }
}
