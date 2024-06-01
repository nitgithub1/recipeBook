//
//  HomeView.swift
//  RecipeBook
//
//  Created by Lakshika on 21/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeViewModel(headerViewModel: HeaderViewModel(profileName : "nitin"),
                                  
        searchViewModel: SearchBarViewModel(textField : "search recipes", button : "filter"),
        
        categoryViewModel: CategorySectionViewModel(title : "Categories", categoryList : [ CategoryCellViewModel(imageName : "breakfast",categoryName : "breakFast"),CategoryCellViewModel(imageName : "lunch",categoryName : "lunch"),CategoryCellViewModel(imageName : "dessert",categoryName : "dessert"),CategoryCellViewModel(imageName : "noodles",categoryName : "noodles")]),
                                                    
        recommendedViewModel: RecipeSectionViewModel(title: "Recommendation", button: "see all", recipeList: [
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4")]),
        
        weekRecipeViewModel: RecipeSectionViewModel(title: "Recipe of the week", button: "see all", recipeList: [
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4"),
    RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4")]))
    
    var body: some View {
        
        ScrollView(showsIndicators : false)
        {
        VStack(alignment : .leading, spacing: 30){
         HeaderView(viewModel: viewModel.headerViewModel)
         SearchBarView(viewModel: viewModel.searchViewModel)
         CategorySectionView(viewModel: viewModel.categoryViewModel)
         RecipeSectionView(viewModel: viewModel.recommendedViewModel)
         RecipeOfWeekView(viewModel: viewModel.weekRecipeViewModel)
        }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
