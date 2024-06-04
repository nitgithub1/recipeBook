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
    
    func onLoad() {
        presenter.onLoad()
    }
    
    var presenter : HomePresenterProtocol
    init(presenter : HomePresenterProtocol) {
    
        self.presenter = presenter
        
    }
    
    
    
}
