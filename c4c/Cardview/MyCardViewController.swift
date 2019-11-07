//
//  MyCardViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 07/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class MyCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let locationNames = ["Hawaii Resort", "Mountain Expedition", "Scuba Diving"]
    
    let locationImages = [UIImage(named: "hawaiiResort"), UIImage(named: "mountainExpedition"), UIImage(named: "scubaDiving")]
    
    let locationDescription = ["Beautiful resort off the coast of Hawaii", "Exhilarating mountainous expedition through Yosemite National Park", "Awesome Scuba Diving adventure in the Gulf of Mexico"]
    
    
    
    override func viewDidLoad() {
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationNames.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(locationNames[indexPath.row])")
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.locationImage.image = locationImages[indexPath.row]
        cell.locationName.text = locationNames[indexPath.row]
        cell.locationDescription.text = locationDescription[indexPath.row]
        
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        return cell
    }
    
}
