//
//  ProductCollectionViewCell.swift
//  Assignment
//
//  Created by user163815 on 5/15/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var addToCartBtn: UIButton!
    
    func setup(with product: Product){
        productImageView.image = product.image
        titleLbl.text = product.title
        
    }
}
