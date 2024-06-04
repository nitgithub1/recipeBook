//
//  RecipeSectionView.swift
//  RecipeBook
//
//  Created by Lakshika on 25/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct RecipeSectionView: View {
    
    var viewModel = RecipeSectionViewModel(title: "Recommendation", button: "see all", recipeList: [
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
                
                Button(viewModel.button, action : {
                    self.viewModel.onSeeAllTap?()
                })
            }
            
             ScrollView(.horizontal, showsIndicators: false)
            {
                HStack(spacing : 6)
                {
                    ForEach(viewModel.recipeList, id: \.id) { recipe in
                    SmallRecipeCell(viewModel: recipe)
                        .onTapGesture {
                            self.viewModel.onRecipeTap?(recipe.id)
                        }
                }
            }
                }
        }
    }
}


