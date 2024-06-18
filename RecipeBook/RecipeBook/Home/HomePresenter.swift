//
//  HomePresenter.swift
//  RecipeBook
//
//  Created by Lakshika on 03/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

class HomePresenter: HomePresenterProtocol
{
    var viewModel : HomeViewModel?
    var view : HomeViewProtocol?
    
    func onLoad() {
        viewModel = HomeViewModel(headerViewModel: HeaderViewModel(profileName : "nitin"),
                                      
            searchViewModel: SearchBarViewModel(textField : "search recipes", button : "filter",onFilterTap: {print("filter")}),
            
            categoryViewModel: CategorySectionViewModel(title : "Categories", categoryList : [ CategoryCellViewModel(imageName : "breakfast",categoryName : "breakFast"),CategoryCellViewModel(imageName : "lunch",categoryName : "lunch"),CategoryCellViewModel(imageName : "dessert",categoryName : "dessert"),CategoryCellViewModel(imageName : "noodles",categoryName : "noodles")],onCategoryTap: { categoryId in
            print(categoryId)
            }),
                                                        
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
        
        if let viewModel = viewModel{
        view?.setupHomeView(viewModel: viewModel)
        }
        
    }
    
    
    
    
    
    
    
}
