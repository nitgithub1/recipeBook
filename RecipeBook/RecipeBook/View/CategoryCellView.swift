//
//  CategoryCellView.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct CategoryCellView: View {
    
    var viewModel = CategoryCellViewModel(imageName : "breakfast", categoryName : "breakfast")
    
    var body: some View {
        
        
        VStack
        {
            Image(viewModel.imageName)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .frame(width: 50,height: 60)
            .cornerRadius(10)
            .cornerRadius(12)
            
            Text(viewModel.categoryName)
            .font(.system(size : 12))
        }
        
    }
    
    
}





struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView()
    }
}
