//
//  SubViewController.swift
//  app_t1
//
//  Created by fernando-mbp on 08/05/18.
//  Copyright © 2018 Fernando Funaki. All rights reserved.
//

import UIKit

class SubViewController : UIViewController,  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let categories = ["Internet", "Sistemas Op.", "Redes", "Formatação", "Limpeza", "Wordpress"]
    let texts = ["Internet Internet Internet Internet Internet Internet Internet Internet Internet Internet ", "Sistemas Op. Sistemas Op. Sistemas Op. Sistemas Op. Sistemas Op. Sistemas Op. Sistemas Op. Sistemas Op. ", "Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes Redes ", "Formatação Formatação Formatação Formatação Formatação Formatação Formatação Formatação ", "Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza Limpeza", "Wordpress Wordpress Wordpress Wordpress Wordpress Wordpress Wordpress Wordpress Wordpress Wordpress"]
    let categoryImages = [UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3"),UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width - 10, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "subCell", for: indexPath) as! SubCell
        
        cell.subCellImage.image = categoryImages[indexPath.row]
        cell.subCellTitle.text = categories[indexPath.row]
        cell.subCellText.text = texts[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.borderColor  =  UIColor.clear.cgColor
        cell.contentView.layer.borderWidth = 5.0
        cell.contentView.layer.shadowOpacity = 0.5
        cell.contentView.layer.shadowColor =  UIColor.lightGray.cgColor
        cell.contentView.layer.shadowRadius = 5.0
        cell.contentView.layer.shadowOffset = CGSize(width:5, height: 5)
        cell.contentView.layer.masksToBounds = true
        
        

        
        
        return cell
    }


}
