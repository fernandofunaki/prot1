//
//  ViewController.swift
//  app_t1
//
//  Created by fernando-mbp on 07/05/18.
//  Copyright © 2018 Fernando Funaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let categories = ["Internet", "Sistemas Op.", "Redes", "Formatação", "Limpeza", "Wordpress"]
    let categoryImages = [UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3"),UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3")]

    override func viewDidLoad() {
      super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCellCollectionViewCell
        
        cell.categoryImage.image = categoryImages[indexPath.row]
        cell.categoryName.text = categories[indexPath.row]
        
        
        //This creates the shadows and modifies the cards a little bit
//        cell.contentView.layer.cornerRadius = 1.0
//        cell.contentView.layer.borderWidth = 0.3
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        cell.layer.shadowRadius = 1.0
//        cell.layer.shadowOpacity = 1.0
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath

        
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.borderColor  =  UIColor.clear.cgColor
        cell.contentView.layer.borderWidth = 5.0
        cell.contentView.layer.shadowOpacity = 0.5
        cell.contentView.layer.shadowColor =  UIColor.lightGray.cgColor
        cell.contentView.layer.shadowRadius = 5.0
        cell.contentView.layer.shadowOffset = CGSize(width:5, height: 5)
        cell.contentView.layer.masksToBounds = true
    
        
        cell.contentView.layer.shadowColor = UIColor.black.cgColor
        cell.contentView.layer.shadowOpacity = 1
        cell.contentView.layer.shadowOffset = CGSize.zero
        cell.contentView.layer.shadowRadius = 10
        
        
        return cell
    }


}

