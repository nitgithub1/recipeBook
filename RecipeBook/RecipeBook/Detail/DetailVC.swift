//
//  DetailVC.swift
//  RecipeBook
//
//  Created by Lakshika on 06/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import UIKit
import SwiftUI

class DetailVC: UIViewController, DetailViewProtocol{
    
    
    

    var interactor : DetailInteractorProtocol
    private init(interactor : DetailInteractorProtocol) {

        self.interactor = interactor
        super.init(nibName : nil, bundle : nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.onLoad()

        // Do any additional setup after loading the view.
    }
    
    static func makeDetailViewController()->DetailVC
    {
        let presenter  = DetailPresenter()
        let interactor = DetailInterector(presenter: presenter)
        let detailVC = DetailVC(interactor: interactor)
        presenter.view = detailVC
        return detailVC
    }
    
    func setupDetailView(viewModel: DetailViewModel) {
        
        var viewModel = viewModel
        
        var detailView = DetailView(viewModel: viewModel)
        addHostingViewController(swiftUIView: AnyView(detailView))
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
