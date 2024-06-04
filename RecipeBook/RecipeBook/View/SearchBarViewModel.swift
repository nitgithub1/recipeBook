//
//  SearchBarViewModel.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

struct SearchBarViewModel
{
    var textField : String
    var button : String
    
    var onFilterTap : (()->Void)?
}
