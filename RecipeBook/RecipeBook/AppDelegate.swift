//
//  AppDelegate.swift
//  RecipeBook
//
//  Created by Lakshika on 20/05/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
         let tabbarcontroller  = UITabBarController()
        
        let main = Main()
        let searchVC = SearchVC()
        let saveVC = SaveVC()
        let profileVC = ProfileVC()
        
        main.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home1"), tag: 0)
        searchVC.tabBarItem = UITabBarItem(title: "search", image: UIImage(named: "search"), tag: 1)
        saveVC.tabBarItem = UITabBarItem(title: "save", image: UIImage(named: "save"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "profile", image: UIImage(named: "profile"), tag: 3)
        
        
        tabbarcontroller.viewControllers = [main,searchVC,saveVC,profileVC]
        
        // Create a UINavigationController with your custom view controller as the root
        let navigationController = UINavigationController(rootViewController: tabbarcontroller)
        
        // Create a UIWindow
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
        return true
    }



}

