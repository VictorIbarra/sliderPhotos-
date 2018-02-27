//
//  ViewController.swift
//  fotosApp
//
//  Created by victor sotelo on 1/23/18.
//  Copyright © 2018 victor sotelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fotosCollectionView.delegate = self
        fotosCollectionView.dataSource = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    let imagesNamesArr :[String] = ["1","2","3","4","5"]
  
    @IBOutlet weak var fotosCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fotoCeldaCollectionView", for: indexPath) as! imagesCollectionViewCell
        
        cell.imagePerCell.image = UIImage(named: imagesNamesArr[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesNamesArr.count
    }
    

    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screen = UIScreen.main.bounds
        
        return CGSize(width: screen.width, height: screen.height)
        
    }


    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat{
    
        return 0.0
    }
}

