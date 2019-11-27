//
//  MyCardViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 07/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView

class MyCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let locationNames = ["Report Exposure", "Immunisation Profile", "Annual Checkup & Vaccination Schedule","Information Center","Broadcast"]
    
    let locationImages = [UIImage(named: "report"), UIImage(named: "stethoscope"), UIImage(named: "stethoscope"),UIImage(named: "broadcast"),UIImage(named: "broadcast")]
    
    let locationDescription = ["", "", "","",""]
    
//    self.options.append(Options(name: "Report Exposure", imageurl: "stetho3"))
//    self.options.append(Options(name: "Immunisation Profile", imageurl: "stetho3"))
//    self.options.append(Options(name: "Annual Checkup & Vaccination Schedule", imageurl: "stetho3"))
//    self.options.append(Options(name: "Information Center", imageurl: "stetho3"))
    
    
    
    override func viewDidLoad() {
        
        
        navigationItem.hidesBackButton = true
        
        
        let logoutbut = UIBarButtonItem(image: UIImage(named: "logout"), style: .done, target: self, action: #selector(logout))
        
        
        
        self.navigationItem.rightBarButtonItems = [logoutbut]
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
    }
    
    
    
    @objc func logout(){
        
        print("logging out")
        self.navigationController?.popToRootViewController(animated: true)
        //    performSegue(withIdentifier: "selectedcategorylogoutsegue", sender: self)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationNames.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(locationNames[indexPath.row])")
        
        
        if((locationNames[indexPath.row].contains("Report Exposure"))){
            
            performSegue(withIdentifier: "thereportexposuresegue", sender: self)
            
        }
        else if((locationNames[indexPath.row].contains("Immunisation Profile"))){
            
            performSegue(withIdentifier: "theimmunisationsegue", sender: self)
            
        }
        else if((locationNames[indexPath.row].contains("Information Center"))){
            
            performSegue(withIdentifier: "theinformationsegue", sender: self)
            
        }
            
        else if((locationNames[indexPath.row].contains("Annual Checkup & Vaccination Schedule"))){
            
            performSegue(withIdentifier: "vaccinationschedulesegue", sender: self)
            
        }
            
        else if((locationNames[indexPath.row].contains("Broadcast"))){
            
            performSegue(withIdentifier: "broadcastsegue", sender: self)
            
        }
        else{
            
            SCLAlertView().showInfo("Status", subTitle: "Work in progress") // Info
            
        }
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.locationImage.image = locationImages[indexPath.row]
        cell.locationName.text = locationNames[indexPath.row]
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
