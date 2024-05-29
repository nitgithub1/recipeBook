//
//  Main.swift
//  RecipeBook
//
//  Created by Lakshika on 20/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import UIKit
import SwiftUI

class Main: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let homeView = HomeView()
        addHostingViewController(swiftUIView: AnyView(homeView))
        
        
        
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
extension UIViewController
{
    func addHostingViewController(swiftUIView : AnyView)
 {
   let hostingController = UIHostingController(rootView: swiftUIView)
   // Add the hosting controller as a child view controller
   addChild(hostingController)
   // Add the hosting controller's view to the view hierarchy
   view.addSubview(hostingController.view)
   // Set up constraints to position the SwiftUI view
   hostingController.view.translatesAutoresizingMaskIntoConstraints = false
   NSLayoutConstraint.activate([
       hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
       hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
       hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
       hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
   ])
   // Notify the hosting controller that it has been moved to a parent
   hostingController.didMove(toParent: self)
 
}
}
