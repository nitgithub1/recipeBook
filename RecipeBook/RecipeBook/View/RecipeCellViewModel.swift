//
//  RecipeCellViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 22/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

struct RecipeCellViewModel : Identifiable
{        var id = UUID().uuidString
    var imageName : String
    var recipeName : String
    var time : String
    var rating : String
    
}
