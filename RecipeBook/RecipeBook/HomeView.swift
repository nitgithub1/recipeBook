//
//  HomeView.swift
//  RecipeBook
//
//  Created by Lakshika on 21/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeViewModel(headerView: <#T##HeaderViewModel#>, searchView: <#T##SearchBarViewModel#>, categoryView: <#T##CategorySectionViewModel#>, recommendedView: <#T##RecipeSectionViewModel#>, weekRecipe: <#T##RecipeSectionViewModel#>)
    
    var body: some View {
        
        ScrollView(showsIndicators : false)
        {
        VStack(alignment : .leading, spacing: 30){
         HeaderView()
         SearchBarView()
         CategorySectionView()
         RecipeSectionView()
         RecipeOfWeekView()
        }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
