//
//  RecipeSectionViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 25/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

struct RecipeSectionViewModel
{
    var title : String
    var button : String
    var recipeList : [RecipeCellViewModel]
    
    var onSeeAllTap : (()->Void)?
    var onRecipeTap : ((String)->Void)?
    
}
