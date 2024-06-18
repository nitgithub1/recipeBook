//
//  DetailProtocol.swift
//  RecipeBook
//
//  Created by Lakshika on 06/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import Foundation

protocol DetailInteractorProtocol {
    func onLoad()

}
protocol DetailPresenterProtocol {
    func onLoad()
}
protocol DetailViewProtocol {
    func setupDetailView(viewModel : DetailViewModel)
}
