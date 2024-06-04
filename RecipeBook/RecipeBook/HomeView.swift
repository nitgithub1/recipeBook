//
//  HomeView.swift
//  RecipeBook
//
//  Created by Lakshika on 21/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI


struct HomeView: View {
    
    var viewModel : HomeViewModel
    
    var body: some View {
        
        ScrollView(showsIndicators : false)
        {
        VStack(alignment : .leading, spacing: 30){
         HeaderView(viewModel: viewModel.headerViewModel)
         SearchBarView(viewModel: viewModel.searchViewModel)
         CategorySectionView(viewModel: viewModel.categoryViewModel)
         RecipeSectionView(viewModel: viewModel.recommendedViewModel)
         RecipeSectionView(viewModel: viewModel.weekRecipeViewModel)
        }
        }
        
    }
}

