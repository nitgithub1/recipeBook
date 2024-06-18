//
//  DetailInteractor.swift
//  RecipeBook
//
//  Created by Lakshika on 06/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

class DetailInterector: DetailInteractorProtocol
{

    func onLoad() {
        presenter.onLoad()
    }
    
    var presenter : DetailPresenterProtocol
    init(presenter : DetailPresenterProtocol) {
    
        self.presenter = presenter
        
    }
    
    
    
}
