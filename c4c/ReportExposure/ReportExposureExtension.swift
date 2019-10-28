//
//  ReportExposureExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 25/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation

extension ReportExposureViewController{
    
    
    func validate(){
        
        
        
//        @IBOutlet weak var datetimeofexposure: UITextField!
//
//        @IBOutlet weak var whereexposureoccured: UITextField!
//
//        @IBOutlet weak var whereother: UITextField!
//
//        @IBOutlet weak var typeother: UITextField!
//
//        @IBOutlet weak var typeofexposure: UITextField!
//
//        @IBOutlet weak var exposurewasresultof: UITextField!
//
//        @IBOutlet weak var exposureresultother: UITextField!
//
//        @IBOutlet weak var whichdevice: UITextField!
//
//        @IBOutlet weak var whichdeviceother: UITextField!
//
//        @IBOutlet weak var devicesafetydesigned: UITextField!
//
//        @IBOutlet weak var devicesafetyother: UITextField!
//
//        @IBOutlet weak var describeinjury: UITextField!
//
//        @IBOutlet weak var describeother: UITextField!
//
//        @IBOutlet weak var purpose: UITextField!
//
//        @IBOutlet weak var purposeother: UITextField!
//        @IBOutlet weak var howinjuryoccured: UITextField!
//
//        @IBOutlet weak var howinjuryoccurother: UITextField!
//
//        @IBOutlet weak var dateofinitiationcurrentpep: UITextField!
//
//        @IBOutlet weak var hivstatus: UITextField!
//
//        @IBOutlet weak var hbvstatus: UITextField!
//
//        @IBOutlet weak var howmanyexposures: UITextField!
//
//        @IBOutlet weak var waspepinitiated: UITextField!
        
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
        else if(devicesafetyother.text!.isEmpty && (devicesafetyother.isEnabled)){
            
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
            
            print("reporting")
        }
        
    }
    
    
}
