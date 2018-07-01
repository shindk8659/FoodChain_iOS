//
//  FavoriteViewController.swift
//  FoodChain_iOS
//
//  Created by 신동규 on 2018. 7. 1..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    

    var estimateWidth = 160.0
    var cellMarginSize = 10.0
    
    
    @IBOutlet weak var FavoriteCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FavoriteCollectionView.dataSource = self 
        FavoriteCollectionView.delegate = self

        // Do any additional setup after loading the view.
    }

 

}

extension FavoriteViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoritecell", for: indexPath) as! FavoriteCollectionViewCell
        cell.FavoriteLB.text = String(indexPath.row)
        
        return cell
        
        
        
    }
    
    
}
extension FavoriteViewController: UICollectionViewDelegateFlowLayout{
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.calculateWith()
        return CGSize(width: width, height: width)
    }
    
    func calculateWith() -> CGFloat {
        let estimatedWidth = CGFloat(estimateWidth)
        let cellCount = floor(CGFloat(self.view.frame.size.width / estimatedWidth))
        
        let margin = CGFloat(cellMarginSize * 2)
        let width = (self.view.frame.size.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
        
        return width
    }
    
    
    
}
