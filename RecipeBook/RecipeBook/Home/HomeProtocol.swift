//
//  HomeProtocol.swift
//  RecipeBook
//
//  Created by Lakshika on 03/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation
 
protocol HomeInteractorProtocol {
    func onLoad()
    func onRecommendationSeeAllTap()
    func onWeekRecipeSeeAllTap()
    func onRecommendationRecipeTap(recipeId : String)
    func onWeekRecipeRecipeTap(recipeId : String)
}
protocol HomePresenterProtocol {
    func onLoad()
}
protocol HomeViewProtocol {
    func setupHomeView(viewModel : HomeViewModel)
}

