//
//  ReportExposureExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 25/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import SCLAlertView
import Alamofire
import SwiftyJSON

extension ReportExposureViewController{
    
    
    func validate(){
        
        
        if(datetimeofexposure.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "Date time is required")
        
        }
        else if(whereexposureoccured.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "where exposure occured is required")
            
        }
        else if(whereother.text!.isEmpty && (!whereother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "where exposure occured other is required")
            
        }
        else if(typeofexposure.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "type of exposure is required")
            
        }
        else if(typeother.text!.isEmpty && (!typeother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "Type other is required")
            
        }
            
        else if(exposurewasresultof.text!.isEmpty && (exposurewasresultof.isEnabled)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "Result of exposure is required")
            
        }
        else if(exposureresultother.text!.isEmpty && (!exposureresultother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "Result of exposure other is required")
            
        }
        else if(whichdevice.text!.isEmpty && (whichdevice.isEnabled)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "device is required")
            
        }
        else if(whichdeviceother.text!.isEmpty && (!whichdeviceother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "device other is required")
            
        }
        else if(devicesafetydesigned.text!.isEmpty && (devicesafetydesigned.isEnabled)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "device safety design is required")
            
        }
        else if(whichdeviceother.text!.isEmpty && (!whichdeviceother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "device other is required")
            
        }
        else if(devicesafetyother.text!.isEmpty && (!devicesafetyother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "device safety other is required")
            
        }
        else if(describeinjury.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "injury description is required")
            
        }
        else if(describeother.text!.isEmpty && (!describeother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "injury description other is required")
            
        }
        else if(purpose.text!.isEmpty && (purpose.isEnabled)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "purpose is required")
            
        }
        else if(purposeother.text!.isEmpty && (!purposeother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "purpose other is required")
            
        }
        else if(howinjuryoccured.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "How injury occured is required")
            
        }
        else if(howinjuryoccurother.text!.isEmpty && (!howinjuryoccurother.isHidden)){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "How injury occured other is required")
            
        }
        else if(dateofinitiationcurrentpep.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "Date of initiation of current pep is required")
            
        }
        else if(hivstatus.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "HIV status is required")
            
        }
        else if(hbvstatus.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "HBV status is required")
            
        }
        else if(howmanyexposures.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "How many exposures is required")
            
        }
        else if(waspepinitiated.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Report exposure error", mymessage: "was pep initiated is required")
            
        }
        else{
            
            
            dateofexposureS = datetimeofexposure.text!
            numberofexposuresS = howmanyexposures.text!
            HbvStatusS = String(SPINNERLISTHBVSTATUS.index(of: (hbvstatus.text!))! + 1)
            HivStatusS = String(SPINNERLISTHIVSTATUS.index(of: (hivstatus.text!))! + 1)
            pepinitS = String(SPINNERLISTPEPINIT.index(of: (waspepinitiated.text!))! + 1)
            
            
            if(devicesafetydesigned.isEnabled){
                
                deviceSafetyS = String(SPINNERLISTSAFETY.index(of: (devicesafetydesigned.text!))! + 1)
                
            }
            else{
                
                deviceSafetyS = "-1"
                
            }
            
            
            dateofpepinitS = dateofinitiationcurrentpep.text!
            if(!exposureresultother.isHidden){
                
                exposureresultS = exposureresultother.text!
            }
            else if(exposurewasresultof.isEnabled){
                
                exposureresultS = String(SPINNERLISTEXPOSURERESULT.index(of: (exposurewasresultof.text!))! + 1)
            }
            
            if(!whereother.isHidden){
                
                whereS = whereother.text!
            }
            else{
                
                whereS = String(SPINNERLISTWHERE.index(of: (whereexposureoccured.text!))! + 1)
            }
            
            if(!typeother.isHidden){
                
                whatS = typeother.text!
            }
            else{
                
                whatS = String(SPINNERLISTWHAT.index(of: (typeofexposure.text!))! + 1)
            }
            
            if(!purposeother.isHidden){
                
                purposeS = purposeother.text!
            }
            else if(purpose.isEnabled){
                
                purposeS = String(SPINNERLISTPURPOSE.index(of: (purpose.text!))! + 1)
            }
            
            if(!howinjuryoccurother.isHidden){
                           
               whenS = howinjuryoccurother.text!
           }
           else{
               
               whenS = String(SPINNERLISTWHEN.index(of: (howinjuryoccured.text!))! + 1)
           }
            
            if(!whichdeviceother.isHidden){
                
                deviceS = whichdeviceother.text!
            }
            else if(whichdevice.isEnabled){
                
                deviceS = String(SPINNERLISTDEVICE.index(of: (whichdevice.text!))! + 1)
            }
            
            if(!describeother.isHidden){
                           
                   deepS = describeother.text!
               }
               else{
                   
                   deepS = String(SPINNERLISTDEEPALGORITHM.index(of: (describeinjury.text!))! + 1)
               }
            
            
            
            getUserPhoneNumber()
//            myphoneS="0721990078"
            reportExposureRemotely()

        }
        
    }


    
    func reportExposureRemotely(){

        
        let parameters: Parameters=[
            
            KEY_REPORTEXPOSURE_DATEEXPD:dateofexposureS,
            KEY_REPORTEXPOSURE_DATEPEP:dateofpepinitS,
            KEY_REPORTEXPOSURE_DEEP:deepS,
            KEY_REPORTEXPOSURE_DEVICE:deviceS,
            KEY_REPORTEXPOSURE_DEVICESAFETY:deviceSafetyS,
            KEY_REPORTEXPOSURE_ELOC:whereS,
            KEY_REPORTEXPOSURE_ETYPE:whatS,
            KEY_REPORTEXPOSURE_EXPNO:numberofexposuresS,
            KEY_REPORTEXPOSURE_EXPRESULT:exposureresultS,
            KEY_REPORTEXPOSURE_HIVSTATUS:HivStatusS,
            KEY_REPORTEXPOSURE_HBVSTATUS:HbvStatusS,
            KEY_REPORTEXPOSURE_PEPINIT:pepinitS,
            KEY_REPORTEXPOSURE_PURP:purposeS,
            KEY_REPORTEXPOSURE_WHENITHAPND:whenS,
            KEY_REPORTEXPOSURE_PHONENO:myphoneS
           
        ]
        
        displaySpinner()
        
        Alamofire.request(REPORTEXPOSURE_URL, method: .post, parameters: parameters).responseString { response in
            self.dismissSpinner()
            
            self.hideOthers()
            self.toggleFields(isHidden: true)
            self.clearFields()
            
            self.displaySuccessDialog(mytitle: "Report Exposure", mymessage: response.description)
            print(response.description)
          
        }
            

    }
    
    
    
    
    
 func getUserPhoneNumber(){
        

        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            let rs = try database.executeQuery("select phone from userData", values: nil)
            while rs.next() {
                let phoneS = rs.string(forColumn: "phone")
                myphoneS = phoneS!
              
                }
            }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    func clearFields(){
        
        datetimeofexposure.text = ""
        whereexposureoccured.text = ""
        typeofexposure.text = ""
        exposurewasresultof.text = ""
        whichdevice.text = ""
        describeinjury.text = ""
        howinjuryoccured.text = ""
        dateofinitiationcurrentpep.text = ""
        hivstatus.text = ""
        hbvstatus.text = ""
        howmanyexposures.text = ""
        waspepinitiated.text = ""
     
    }
    
    
}
