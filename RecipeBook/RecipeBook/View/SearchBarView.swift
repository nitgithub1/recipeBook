//
//  SearchBarView.swift
//  RecipeBook
//
//  Created by Lakshika on 29/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct SearchBarView: View {
    
    var viewModel = SearchBarViewModel(textField : "search recipes", button : "filter")
      
    @State private var recipe = ""
    
    
    var body: some View {
        
        
        HStack
        {
            Image("search1")
            .resizable()
            .frame(width: 25,height: 25)
            TextField(viewModel.textField, text : $recipe )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue)
            )
            Button(viewModel.button, action : {
                self.viewModel.onFilterTap?()
            })
        }
        
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
