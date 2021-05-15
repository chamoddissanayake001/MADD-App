//
//  HomeViewController.swift
//  Assignment
//
//  Created by user163815 on 5/9/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var btnViewAllFeatured: UIButton!
    @IBOutlet weak var btnViewAllNew: UIButton!
    
    override func viewDidLoad() {
      super.viewDidLoad()
     
   
          
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let btn_temp : UIButton = sender as! UIButton
        
        switch btn_temp {
            case btnViewAllFeatured:
                let vc = segue.destination as? FeaturedProductsViewController
                vc?.screenTitle = "All Featured Products"
            case btnViewAllNew:
                let vc = segue.destination as? FeaturedProductsViewController
                vc?.screenTitle = "All Products"
            default:
                let vc = segue.destination as? FeaturedProductsViewController
                vc?.screenTitle = "All Products"
    }
}

}
