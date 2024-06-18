//
//  DetailPresenter.swift
//  RecipeBook
//
//  Created by Lakshika on 06/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

class DetailPresenter: DetailPresenterProtocol
{
    var viewModel : DetailViewModel?
    var view : DetailViewProtocol?
    
    func onLoad() {
        
        viewModel = DetailViewModel(imageViewModel: ImageViewModel(imageName: "pasta"), recipeNameViewModel: RecipeNameViewModel(recipeName: "pasta", time: "time", rating: "rating"), descriptionViewModel: DescriptionViewModel(description: "description"), ingredientViewModel: IngredientViewModel(ingredients: [IngredientViewModel.Ingredient(image: "pasta", ingredient: "ingredient1", quantity: "quantity")]), directionViewModel: DirectionViewModel(directions: ["direction1","direction2"]))
        
        if let viewModel = viewModel{
        view?.setupDetailView(viewModel: viewModel)
        }
        
    }
    
}
