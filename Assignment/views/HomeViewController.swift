//
//  HomeViewController.swift
//  Assignment
//
//  Created by user163815 on 5/9/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FHCVCell", for: indexPath) as! FeaturedHorizontialCollectionViewCell

        cell.featuredProductHorizontialImageView.image = products[indexPath.row].image
        cell.featuredProductHorizontalTitle.text = products[indexPath.row].title
        cell.featuredProductHorizontialPrice.text = products[indexPath.row].price



        return cell
    }

}
