//
//  ViewController.swift
//  app_ti
//
//  Created by fernando-mba on 02/05/18.
//  Copyright © 2018 fernando-mba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
  
    let categoryName = ["Redes", "Sistemas Operacionais", "Internet", "Word Press"]
    let categoryImage = [UIImage(named: "category_wordpress"),
                         UIImage(named: "category_computer_networking"),
                         UIImage(named: "category_wordpress"),
                         UIImage(named: "category_computer_networking")]
    let categoryDescription = ["Projeto, configuração e reparo de redes de computadores",
                         "Instalação e Formatação",
                         "Instalação e manutenção",
                         "Instalação, Configuração e desenveolvimento de web sites"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return categoryName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cetegory_cell", for: indexPath)
        as! CollectionViewCell
        cell.category_name.text = categoryName[indexPath.row]
        cell.category_image.image = categoryImage[indexPath.row]
        cell.category_description.text = categoryDescription[indexPath.row]
        
//        cell.contentView.layer.cornerRadius = 4.0
//        cell.contentView.layer.borderWidth = 1.0
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
////        cell.layer.shadowRadius = 4.0
//        cell.layer.shadowOpacity = 1.0
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
//
//        cell.layer.cornerRadius=10 //set corner radius here
//        cell.layer.borderColor = UIColor.gray.cgColor// set cell border color here
//        cell.layer.borderWidth = 0 // set border width here
        
        
        
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true;
        
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width:0,height: 2.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        cell.layer.cornerRadius=10

        
        return cell
    }
    
    

}

