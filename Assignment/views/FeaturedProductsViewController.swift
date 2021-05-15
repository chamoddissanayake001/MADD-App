//
//  FeaturedProductsViewController.swift
//  Assignment
//
//  Created by user163815 on 5/5/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class FeaturedProductsViewController: UIViewController, UICollectionViewDelegate {
    
//    , UICollectionViewFlowLayout

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet var collection:UICollectionView!
    override func viewDidLoad() {
           super.viewDidLoad()
           productCollectionView.dataSource = self
           productCollectionView.delegate = self
           collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
//    func collectionView(_ collectionView: UICollectionViewCell, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath:IndexPath)->CGSize{
//        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
//        let space: CGFloat = (flowLayout?.minimumInteritemSpacing ?? 0.0) + (flowLayout?.sectionInset.left ?? 0.0) + (flowLayout?.sectionInset.right ?? 0.0)
//        let size:CGFloat = (collection.frame.size.width - space) / 2.0
//        return CGSize(width: size, height: size)
//    }

   
}

extension FeaturedProductsViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.setup(with: products[indexPath.row])
        return cell
    }
}


extension FeaturedProductsViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        @IBOutlet var collection:UICollectionView!
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowLayout?.minimumInteritemSpacing ?? 0.0) + (flowLayout?.sectionInset.left ?? 0.0) + (flowLayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (collection.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size)
        
//        return CGSize(width: 170, height: 250)
    }
}

