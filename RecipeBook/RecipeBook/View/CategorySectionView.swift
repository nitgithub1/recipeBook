//
//  CategorySectionView.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct CategorySectionView: View {
    
    var viewModel = CategorySectionViewModel(title : "Categories", categoryList : [ CategoryCellViewModel(imageName : "breakfast",categoryName : "breakFast"),CategoryCellViewModel(imageName : "lunch",categoryName : "lunch"),CategoryCellViewModel(imageName : "dessert",categoryName : "dessert"),CategoryCellViewModel(imageName : "noodles",categoryName : "noodles")]
    )
    
    var body: some View {
        
        VStack(alignment : .leading)
        {
            Text(viewModel.title)
            
            ScrollView(.horizontal)
            {
              HStack
              {
                ForEach(viewModel.categoryList, id : \.id)
                { category in
                  CategoryCellView(viewModel : category)
                    
                }
             }
            }
        }
        
        
    }
}

struct CategorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionView()
    }
}
