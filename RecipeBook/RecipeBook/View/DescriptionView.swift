//
//  DescriptionView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    
    var viewModel = DescriptionViewModel(description: "description")
    
    var body: some View {
        
        VStack(alignment : .leading, spacing : 10)
        {
            Text("Description")
            .font(.system(size : 16))
            Text(viewModel.description)
            .font(.system(size : 12))
        }
        
        
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
