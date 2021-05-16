//
//  FeaturedProductsViewController.swift
//  Assignment
//
//  Created by user163815 on 5/5/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

struct Product2: Decodable{
    let title: String
    let price: String
    let image: String
}



class FeaturedProductsViewController: UIViewController, UICollectionViewDelegate {
    
     var screenTitle:String = ""
    
//    , UICollectionViewFlowLayout

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet var collection:UICollectionView!
    
    var products = [Product2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = screenTitle
       productCollectionView.dataSource = self
       productCollectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()

        let url = URL(string: "https://488f6031c726.ngrok.io/products/featured")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil{
                do{
                    self.products = try JSONDecoder().decode([Product2].self, from: data!)
                }catch{
                    print("Parse Error")
                }
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            }
        }.resume()
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return products.count
//    }
//    func collectionView(_ collectionView: UICollectionView,  cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
//        cell.setup(with: products[indexPath.row])
//
//        return cell
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
//    @IBOutlet var collection:UICollectionView!
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {


        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowLayout?.minimumInteritemSpacing ?? 0.0) + (flowLayout?.sectionInset.left ?? 0.0) + (flowLayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size*1.5)

//        return CGSize(width: 170, height: 250)
    }
}

