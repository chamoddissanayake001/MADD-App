//
//  OrdersViewController.swift
//  Assignment
//
//  Created by user173744 on 5/17/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class OrdersViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return orders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OrdersCollectionViewCell", for: indexPath) as! OrdersCollectionViewCell
        cell.orderImageView.image = orders[indexPath.row].image
        cell.orderTitle.text = orders[indexPath.row].title
        cell.orderPrice.text = orders[indexPath.row].price
        cell.orderDate.text = orders[indexPath.row].orderedDate
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
