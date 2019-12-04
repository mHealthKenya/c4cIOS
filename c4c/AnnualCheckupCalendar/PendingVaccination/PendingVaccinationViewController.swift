//
//  PendingVaccinationViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 13/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView

class PendingVaccinationViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var vaccineName = [String]()
    
    var vaccineStatus = [String]()
    
    
    override func viewDidLoad() {
        self.title = "Pending Vaccination"
        
        getMeaslesSavedData()
        getMeningocoSavedData()
        getTdapSavedData()
        getVaricellaSavedData()
        getInfluenzaSavedData()
        getHepatitisSavedData()
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.title = "Pending Vaccination"
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vaccineName.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(vaccineName[indexPath.row])")
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PendingVaccinationCollectionViewCell
        
        
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
    
    
    
    
    
    
    //get saved data
    func getHepatitisSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select radiofirst,firstdate,radiosecond,seconddate from hpb", values: nil)
            while rs.next() {
                let radiofirst = rs.string(forColumn: "radiofirst")
                let firstdate = rs.string(forColumn: "firstdate")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let seconddate = rs.string(forColumn: "seconddate")
                
                
                if(!(radiofirst!.isEmpty) && ((radiosecond!.isEmpty) || (firstdate!.isEmpty) || (seconddate!.isEmpty))){
                    
                    vaccineName.append("Hepatitis")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    func getInfluenzaSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select gender,radiofirst,radiosecond,radiothird,dosedate from influenza", values: nil)
            while rs.next() {
                
                
                let radiofirst = rs.string(forColumn: "radiofirst")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let radiothird = rs.string(forColumn: "radiothird")
                let dosedate = rs.string(forColumn: "dosedate")
                
                if(!(radiofirst!.isEmpty) && ((radiosecond!.isEmpty) || (radiothird!.isEmpty) || (dosedate!.isEmpty))){
                    
                    vaccineName.append("Influenza")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    func getVaricellaSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            let rs = try database.executeQuery("select radiofirst,radiosecond,doseone,dosetwo from varicella", values: nil)
            while rs.next() {
                
                
                let radiofirst = rs.string(forColumn: "radiofirst")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let doseone = rs.string(forColumn: "doseone")
                let dosetwo = rs.string(forColumn: "dosetwo")
                
                
                if(!(radiofirst!.isEmpty) && ((radiosecond!.isEmpty) || (doseone!.isEmpty) || (dosetwo!.isEmpty))){
                    
                    vaccineName.append("Varicella")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    func getTdapSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select radiofirst,radiosecond,dateone,datetwo from tdap", values: nil)
            while rs.next() {
                
                
                let radiofirst = rs.string(forColumn: "radiofirst")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let doseone = rs.string(forColumn: "dateone")
                let dosetwo = rs.string(forColumn: "datetwo")
                
                if(!(radiofirst!.isEmpty) && ((radiosecond!.isEmpty) || (doseone!.isEmpty) || (dosetwo!.isEmpty))){
                    
                    vaccineName.append("Tdap")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    
    func getMeaslesSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            //         measles (radiofirst,dateone,datetwo)
            
            let rs = try database.executeQuery("select radiofirst,dateone,datetwo from measles", values: nil)
            while rs.next() {
                
                
                let radiofirst = rs.string(forColumn: "radiofirst")
                let doseone = rs.string(forColumn: "dateone")
                let dosetwo = rs.string(forColumn: "datetwo")
                
                if(!(radiofirst!.isEmpty) && ((doseone!.isEmpty) || (dosetwo!.isEmpty))){
                    
                    vaccineName.append("Measles")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    
    func getMeningocoSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            //         measles (radiofirst,dateone,datetwo)
            
            let rs = try database.executeQuery("select radiofirst,dateone,datetwo from meningoco", values: nil)
            while rs.next() {
                
                
                let radiofirst = rs.string(forColumn: "radiofirst")
                let doseone = rs.string(forColumn: "dateone")
                let dosetwo = rs.string(forColumn: "datetwo")
                
                if(!(radiofirst!.isEmpty) && ((doseone!.isEmpty) || (dosetwo!.isEmpty))){
                    
                    vaccineName.append("Meningoco")
                    vaccineStatus.append("Pending Vaccination")
                    
                }
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
}
