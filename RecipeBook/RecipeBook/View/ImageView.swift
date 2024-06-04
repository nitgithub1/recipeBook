//
//  ImageView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    
    var viewModel = ImageViewModel(imageName: "pasta")
    
    var body: some View {
        
        Image(viewModel.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 200,height: 150)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
