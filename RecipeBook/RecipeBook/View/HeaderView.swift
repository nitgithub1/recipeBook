//
//  HeaderView.swift
//  RecipeBook
//
//  Created by Lakshika on 28/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    var viewModel = HeaderViewModel(profileName : "nitin")
    

    var body: some View {
        
        Text("hi " + viewModel.profileName)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
