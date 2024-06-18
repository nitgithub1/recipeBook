//
//  HomeInteractor.swift
//  RecipeBook
//
//  Created by Lakshika on 03/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

class HomeInterector: HomeInteractorProtocol
{
    func onRecommendationSeeAllTap() {
        print("recommendation")
    }
    
    func onWeekRecipeSeeAllTap() {
        print("weekrecipe")
    }
    
    func onRecommendationRecipeTap(recipeId : String){
        print("recipeTap")
    }
    
    func onWeekRecipeRecipeTap(recipeId : String){
        print("recipeTap")
    }
    
    func onLoad() {
        presenter.onLoad()
        ServiceHandler.shared.getRecipes(completionBlock: nil)
    }
    
    var presenter : HomePresenterProtocol
    init(presenter : HomePresenterProtocol) {
    
        self.presenter = presenter
        
    }
    
    
    
}
