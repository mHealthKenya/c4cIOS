//
//  Loadcounties.swift
//  c4c
//
//  Created by MHEALTH KENYA on 22/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit
import SCLAlertView
import Alamofire
import SwiftyJSON

extension SignupThirdController{
    
    
    
    
    
    
    fileprivate func displaySpinner(){
        
        
        spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        spinner.style = UIActivityIndicatorView.Style.init(rawValue: 10)!
        spinner.center=view.center
        spinner.color = .red
        spinner.hidesWhenStopped = true
        view.addSubview(spinner)
        spinner.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    fileprivate func dismissSpinner(){
        
        spinner.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
        
    }
    
    
    
    func getCounties(){
        mycounties.removeAll()
        
//        let parameters: Parameters=[
//
//            "phone_no":phoneNumber
//
//        ]
        
        displaySpinner()
        
        Alamofire.request(GETCOUNTY_URL, method: .get).responseJSON(completionHandler: {
            
            (response) in
            switch response.result{
                
            case .success(let value):
                
                self.dismissSpinner()
  
                if let json=response.result.value as! [String: Any]?{
                    
                    if let responseUser=json["result"] as! [[String: Any]]?{
                        
//                        print(responseUser)
                        
                        for x in responseUser{
                            
                            
                            let countyName:String=x["name"] as! String
                            print("name is \(countyName)")
                            self.mycounties.append(countyName)
          
                            
                        }
                        
                    }
                    
                }
                
            case .failure(let error):
                self.dismissSpinner()
            
                
                print(error.localizedDescription)

            }
        })
    }
    
    
    
    
    func getSubCounties(countyName:String){
        mysubcounties.removeAll()
        
        let escapedString = countyName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        print(escapedString!)
        
        //        let parameters: Parameters=[
        //
        //            "phone_no":phoneNumber
        //
        //        ]
        
        displaySpinner()
        
        Alamofire.request(GETSUBCOUNTY_URL+"/"+escapedString!, method: .get).responseJSON(completionHandler: {
            
            (response) in
            switch response.result{
                
            case .success(let value):
                
                self.dismissSpinner()
                
                if let json=response.result.value as! [String: Any]?{
                    
                    if let responseUser=json["result"] as! [[String: Any]]?{
                        
                        //                        print(responseUser)
                        
                        for x in responseUser{
                            
                            
                            let subCountyName:String=x["name"] as! String
                            print("name is \(subCountyName)")
                            self.mysubcounties.append(subCountyName)
                            
                            
                        }
                        
                    }
                    
                }
                
            case .failure(let error):
                self.dismissSpinner()
                
                
                print(error.localizedDescription)
                
            }
        })
    }
    
    
    func getFacilities(subCountyName:String){
        myfacilities.removeAll()
        
        let escapedString = subCountyName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        print(escapedString!)
        
        //        let parameters: Parameters=[
        //
        //            "phone_no":phoneNumber
        //
        //        ]
        
        displaySpinner()
        
        Alamofire.request(GETFACILITY_URL+"/"+escapedString!, method: .get).responseJSON(completionHandler: {
            
            (response) in
            switch response.result{
                
            case .success(let value):
                
                self.dismissSpinner()
                self.deleteFacilities()
                
                if let json=response.result.value as! [String: Any]?{
                    
                    if let responseUser=json["result"] as! [[String: Any]]?{
                        
                        print(responseUser)
                        
                        for x in responseUser{
                            
                            
                            let facilityName:String=x["name"] as! String
                            let mflcode:String=x["code"] as! String
                            print("name is \(facilityName) mflcode is \(mflcode)")
                            self.myfacilities.append(facilityName)
                            self.saveFacilities(facilityname: facilityName, mflcode: mflcode)
                            
                            
                        }
                        
                    }
                    
                }
                
            case .failure(let error):
                self.dismissSpinner()
                
                
                print(error.localizedDescription)
                
            }
        })
    }
    
    
   
    
    private func deleteFacilities(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
                        try database.executeUpdate("delete from facilities",values:nil)
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    private func saveFacilities(facilityname: String,mflcode: String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists facilities(name text, mflcode text)", values: nil)
//            try database.executeUpdate("delete from facilities",values:nil)
            try database.executeUpdate("insert into facilities (name,mflcode) values (?, ?)", values: [facilityname,mflcode])
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
}
