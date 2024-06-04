//
//  CategorySectionViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

struct CategorySectionViewModel
{
    var title : String
    var categoryList : [CategoryCellViewModel]
    
    var onCategoryTap : ((String)->Void)?
    
}
