//
//  IngredientViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation



struct IngredientViewModel
{
    
    struct Ingredient : Identifiable
    {
        var id = UUID().uuidString
        var image : String
        var ingredient : String
        var quantity : String
    }
    
    var ingredients : [Ingredient] = []
    
}
