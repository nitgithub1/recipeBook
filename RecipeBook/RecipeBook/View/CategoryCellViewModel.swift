//
//  CategoryCellViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 28/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

struct CategoryCellViewModel : Identifiable
{
    var id = UUID().uuidString
    
    var imageName : String
    var categoryName : String
}
