//
//  SearchVC.swift
//  RecipeBook
//
//  Created by Lakshika on 24/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import UIKit
import SwiftUI

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let searchView = SearchView()
        addHostingViewController(swiftUIView: AnyView(searchView))
        
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
