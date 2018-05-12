//
//  HomeViewController.swift
//  app_ti
//
//  Created by fernando-mbp on 03/05/18.
//  Copyright © 2018 fernando-mba. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDataSource {


    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var testLabel: UILabel!
    let categoryName = ["Redes", "Sist. Operacionais", "Internet", "Word Press"]
    let categoryImage = [UIImage(named: "internet"),
                         UIImage(named: "internet"),
                         UIImage(named: "internet"),
                         UIImage(named: "internet")]
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib.init(nibName: "CategoryCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCell")
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }

        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       self.performSegue(withIdentifier: "goToDetails", sender: self)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryName.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.category_name.text = categoryName[indexPath.row]
                cell.category_image.image =  categoryImage[indexPath.row]
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> CategoryCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath)
//            as! CategoryCell
//
//        cell.category_name.text = categoryName[indexPath.row]
//        cell.category_image.image = categoryImage[indexPath.row]
//        cell.contentView.layer.cornerRadius = 10.0
//        cell.contentView.layer.borderWidth = 0.3
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        cell.layer.shadowOpacity = 0.4
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
//        cell.layer.cornerRadius = 10 //set corner radius here
//        cell.layer.borderColor = UIColor.gray.cgColor// set cell border color here
//        cell.layer.borderWidth = 0 // set border width here
//
//        return cell
//    }
//
//

}
