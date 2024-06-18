//
//  DetailView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var viewModel : DetailViewModel
    
    var body: some View {
        // add this in scroll view
        ScrollView(.vertical, showsIndicators: false)
        {
            VStack(alignment : .leading, spacing : 20)
        {
            ImageView(viewModel: viewModel.imageViewModel)
            RecipeNameView(viewModel: viewModel.recipeNameViewModel)
            DescriptionView(viewModel : viewModel.descriptionViewModel)
            IngredientView(viewModel: viewModel.ingredientViewModel)
            DirectionView(viewModel: viewModel.directionViewModel)
        }
        }
        
    }
}

