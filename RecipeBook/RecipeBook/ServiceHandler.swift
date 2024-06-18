//
//  ServiceHandler.swift
//  RecipeBook
//
//  Created by Lakshika on 11/06/24.
//  Copyright © 2024 nitin. All rights reserved.
//

import UIKit
import Alamofire

class ServiceHandler {

   static let shared = ServiceHandler()
    let headers = [
        "x-rapidapi-key": "b630cba53emsh559d003438b07fcp12a3b3jsnb743a8b78ed8",
        "x-rapidapi-host": "tasty.p.rapidapi.com"
    ]
   func getRecipes(completionBlock: (()-> Void)?)
   {
       //let request  = AF.request(RecipeUrl.getRecipes)
//    let request = NSMutableURLRequest(url: URL(string: RecipeUrl.getRecipes)!)
//       request.allHTTPHeaderFields = headers
    var request = URLRequest(url: URL(string: RecipeUrl.getRecipes)!)
    request.allHTTPHeaderFields = headers
    
    let afrequest = AF.request(request)
       afrequest.responseJSON { (data) in
           let jsonDict1 = try? JSONSerialization.jsonObject(with: data.data!, options: []) as? [String:Any]
           
           print(jsonDict1)
           completionBlock?()
       }
   }
        // Do any additional setup after loading the view.
 }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




struct RecipeUrl
{
   static let getRecipes
       :String="https://tasty.p.rapidapi.com/recipes/list?from=0&size=20&tags=under_30_minutes"
}
