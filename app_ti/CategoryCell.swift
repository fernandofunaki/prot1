//
//  CategoryCell.swift
//  app_ti
//
//  Created by fernando-mbp on 03/05/18.
//  Copyright © 2018 fernando-mba. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var category_image: UIImageView!
    
    @IBOutlet weak var category_name: UILabel!
    
    @IBOutlet weak var width_constrain: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
       // let screenWidth = UIScreen.main.bounds.size.width
        //width_constrain.constant = screenWidth - (2 * 12)
    }

}
