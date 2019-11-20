//
//  NotVaccinatedViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 20/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class NotVaccinatedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let vaccineName = ["vaccine name one", "vaccine name two", "vaccine name three","vaccine name four"]
    let vaccineStatus = ["Not Vaccinated", "Not Vaccinated", "Not Vaccinated","Not Vaccinated"]
    
    
    override func viewDidLoad() {
        self.title="Not Vaccinated"
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vaccineName.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(vaccineName[indexPath.row])")
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NotVaccinatedCollectionViewCell
        
        
        cell.vaccineName.text = vaccineName[indexPath.row]
        cell.vaccineStatus.text = vaccineStatus[indexPath.row]
        //        cell.locationDescription.text = locationDescription[indexPath.row]
        
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 10.0
        cell.contentView.layer.borderWidth = 5.0
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


