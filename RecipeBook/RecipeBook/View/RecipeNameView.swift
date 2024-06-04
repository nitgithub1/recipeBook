//
//  RecipeNameView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct RecipeNameView: View {
    
    var viewModel = RecipeNameViewModel(recipeName: "pasta", time: "time", rating: "rating")
    
    var body: some View {
        
        VStack(alignment : .leading)
        {
            Text(viewModel.recipeName)
            .font(.system(size : 22))
            
            HStack
            {
             Image("time6")
             .resizable()
             .foregroundColor(.green)
             //.aspectRatio(contentMode: .fit)
             .frame(width: 12,height: 12)
                
                Text(viewModel.time)
                .font(.system(size : 10))
                
             Image(systemName:"star.fill")
             .resizable()
             .foregroundColor(.yellow)
             //.aspectRatio(contentMode: .fit)
             .frame(width: 12,height: 12)
                    
                Text(viewModel.rating)
                .font(.system(size : 10))
            }
        }
        
        
    }
}

struct RecipeNameView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeNameView()
    }
}
