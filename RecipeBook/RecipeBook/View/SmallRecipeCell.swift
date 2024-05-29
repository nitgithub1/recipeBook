//
//  SmallRecipeCell.swift
//  RecipeBook
//
//  Created by Lakshika on 22/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct SmallRecipeCell: View {
    
    var viewModel : RecipeCellViewModel = RecipeCellViewModel(imageName: "pasta", recipeName: "pasta", time: "10 min", rating: "4")
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2)
        {
            
            Image(viewModel.imageName)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .frame(width: 90,height: 100)
            .cornerRadius(10)
            .cornerRadius(12)
            
            Text(viewModel.recipeName)
            .font(.system(size : 12))
            
            HStack
            {
            Image("time6")
            .resizable()
            .foregroundColor(.green)
            //.aspectRatio(contentMode: .fit)
            .frame(width: 12,height: 12)
            
             Text(viewModel.time)
             .font(.system(size : 8))
            
            Image(systemName:"star.fill")
            .resizable()
            .foregroundColor(.yellow)
            //.aspectRatio(contentMode: .fit)
            .frame(width: 12,height: 12)
                
            Text(viewModel.rating)
            .font(.system(size : 8))
                
            }
            .onTapGesture{
                
                print("hello")
                
            }
        }
    }
}

struct SmallRecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        SmallRecipeCell()
    }
}
