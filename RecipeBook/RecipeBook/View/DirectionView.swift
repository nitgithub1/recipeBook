//
//  DirectionView.swift
//  RecipeBook
//
//  Created by Lakshika on 02/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import SwiftUI

struct DirectionView: View {
    
    var viewModel = DirectionViewModel(directions: ["step1","step2"])
    
    var body: some View {
        
         VStack
         {
          Text("Steps")
            
                VStack
                {
                    //ForEach(viewModel.directions, id: \.id){ direction in
                    Text(viewModel.directions[0])
                    .font(.system(size : 10))
                 //}
                }
            }
         }
       }

