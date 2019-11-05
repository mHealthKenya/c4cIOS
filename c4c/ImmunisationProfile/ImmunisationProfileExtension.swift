//
//  ImmunisationProfileExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 04/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation


extension ImmunisationProfileViewController{
    
    
    
    
    func hideHpbDetails(){
        
        hepatitisFirstdoseDate.isEnabled = false
        hepatitisFirstdoseDate.text = ""
        hepatitisSeconddoseDate.text = ""
        hepatitisSeconddoseDate.isEnabled = false
        HepatitisSecondDoseYesOutlet.isEnabled = false
        HepatitisSecondDoseYesOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.isEnabled = false
        HepatitisSecondDoseNoOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
        
        hpbsecondLabel.isEnabled = false
        
    }
    
    func hideInfluenzaDetails(){
        
        influenzafirstLabel.isEnabled = false
        influenzasecondLabel.isEnabled  = false
        InfluenzaPregnantNoOutlet.isEnabled = false
        InfluenzaPregnantYesOutlet.isEnabled = false
        InfluenzaTrimesterFirstOutlet.isEnabled = false
        InfluenzaTrimesterSecondOutlet.isEnabled = false
        InfluenzaTrimesterThirdOutlet.isEnabled = false
        
        InfluenzaPregnantNoOutlet.isSelected = false
        InfluenzaPregnantYesOutlet.isSelected = false
        InfluenzaTrimesterFirstOutlet.isSelected = false
        InfluenzaTrimesterSecondOutlet.isSelected = false
        InfluenzaTrimesterThirdOutlet.isSelected = false
        
        
        InfluenzaPregnantNoOutlet.titleLabel?.isEnabled = false
        InfluenzaPregnantYesOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = false
        
        
        influenzaDosedate.isEnabled = false
        influenzaDosedate.text = ""
        
    }
    
    
    func hideVaricellaDetails(){
        
        varicellaFirstdoseDate.isEnabled = false
        varicellaSeconddoseDate.isEnabled = false
        
        varicellaFirstdoseDate.text = ""
        varicellaSeconddoseDate.text = ""
        
    }
    
    func hideTdapDetails(){
        
        tdapFirstdoseDate.isEnabled = false
        tdapFirstdoseDate.text = ""
        tdapsecondLabel.isEnabled = false
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
        TdapBoosterNoOutlet.isEnabled = false
        TdapBoosterYesOutlet.isEnabled = false
        
        TdapBoosterNoOutlet.isSelected = false
        TdapBoosterYesOutlet.isSelected = false
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = false
        TdapBoosterYesOutlet.titleLabel?.isEnabled = false
        
        
    }
    
    func hideMeasleDetails(){
        
        measlesFirstdoseDate.isEnabled = false
        measlesSeconddoseDate.isEnabled = false
        
        measlesFirstdoseDate.text = ""
        measlesSeconddoseDate.text = ""
        
        
    }
    
    func hideMeningocoDetails(){
        
        meningocoFirstdoseDate.isEnabled = false
        meningocoSeconddoseDate.isEnabled = false
        
        meningocoFirstdoseDate.text = ""
        meningocoSeconddoseDate.text = ""
        
        
    }
    
    
    
    //************functions triggered by selected options*********************
    
    
    //**********hpb module********
    func hpbFirstYesSelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = true
        
        HepatitisSecondDoseYesOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
        
        hpbsecondLabel.isEnabled = true
        
        
    }
    
    func hpbFirstPartiallySelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = true
        
        HepatitisSecondDoseYesOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
        
        hpbsecondLabel.isEnabled = true
        
        
    }
    
    func hpbFirstNoSelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = false
        hepatitisFirstdoseDate.text = ""
        hepatitisSeconddoseDate.text = ""
        hepatitisSeconddoseDate.isEnabled = false
        HepatitisSecondDoseYesOutlet.isEnabled = false
        HepatitisSecondDoseYesOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.isEnabled = false
        HepatitisSecondDoseNoOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
        
        hpbsecondLabel.isEnabled = false
        
        
    }
    
    func hpbSecondNoSelected(){
        
        hepatitisSeconddoseDate.isEnabled = false
        hepatitisSeconddoseDate.text = ""
        
    }
    
    func hpbSecondYesSelected(){
        
        hepatitisSeconddoseDate.isEnabled = true
       
        
    }
    
    
    //***************influenza module*****************
    
    
    func influenzafirstYesSelected(){
        
        
        
        influenzasecondLabel.isEnabled  = true
        InfluenzaTrimesterFirstOutlet.isEnabled = true
        InfluenzaTrimesterSecondOutlet.isEnabled = true
        InfluenzaTrimesterThirdOutlet.isEnabled = true

        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = true
        
        
        
    }
    
    func influenzaEnablePregnantOptions(){
        
        influenzafirstLabel.isEnabled = true
        influenzasecondLabel.isEnabled  = true
        InfluenzaPregnantNoOutlet.isEnabled = true
        InfluenzaPregnantYesOutlet.isEnabled = true
        InfluenzaTrimesterFirstOutlet.isEnabled = true
        InfluenzaTrimesterSecondOutlet.isEnabled = true
        InfluenzaTrimesterThirdOutlet.isEnabled = true
       
        InfluenzaPregnantNoOutlet.titleLabel?.isEnabled = true
        InfluenzaPregnantYesOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = true
       
        
    }
    
    func influenzafirstNoSelected(){
        
       
        influenzasecondLabel.isEnabled  = false
        InfluenzaTrimesterFirstOutlet.isEnabled = false
        InfluenzaTrimesterSecondOutlet.isEnabled = false
        InfluenzaTrimesterThirdOutlet.isEnabled = false
        
        InfluenzaTrimesterFirstOutlet.isSelected = false
        InfluenzaTrimesterSecondOutlet.isSelected = false
        InfluenzaTrimesterThirdOutlet.isSelected = false
        
      
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = false
    
        
        
    }
    
    func influenzaFirstTrimesterSelected(){
    
        
        
    }
    
    func influenzaSecondTrimesterSelected(){
        
        
    }
    
    func influenzaThirdtrimesterSelected(){
        
        
    }
    
    func influenzaSecondYesSelected(){
       
        
        
        influenzaDosedate.isEnabled = true
        
        
        
    }
    
    func influenzaSecondNoselected(){
       
        influenzaDosedate.isEnabled = false
        influenzaDosedate.text = ""
        
        
    }
    
    
    
    //**********varicella module******************
    
    func varicellafirstYesSelected(){
        
        
        varicellaFirstdoseDate.isEnabled = true
        varicellaSeconddoseDate.isEnabled = true
    
        
        
    }
    
    func varicellafirstNoSelected(){
        
        varicellaFirstdoseDate.isEnabled = false
        varicellaSeconddoseDate.isEnabled = false
        
        varicellaFirstdoseDate.text = ""
        varicellaSeconddoseDate.text = ""
        
        
    }
    
    func varicellasecondYesSelected(){
        
        
    }
    
    func varicellasecondNoSelected(){
        
        
    }
    
    
    //********tdap module*************
    
    
    func tdapfirstYesSelected(){
        
        
        tdapFirstdoseDate.isEnabled = true
      
        tdapsecondLabel.isEnabled = true
        
        TdapBoosterNoOutlet.isEnabled = true
        TdapBoosterYesOutlet.isEnabled = true
        
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = true
        TdapBoosterYesOutlet.titleLabel?.isEnabled = true
        
        
        
    }
    
    func tdapfirstNoSelected(){
        
        tdapFirstdoseDate.isEnabled = false
        tdapFirstdoseDate.text = ""
        tdapsecondLabel.isEnabled = false
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
        TdapBoosterNoOutlet.isEnabled = false
        TdapBoosterYesOutlet.isEnabled = false
        
        TdapBoosterNoOutlet.isSelected = false
        TdapBoosterYesOutlet.isSelected = false
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = false
        TdapBoosterYesOutlet.titleLabel?.isEnabled = false
        
        
        
    }
    
    func tdapsecondYesSelected(){
       
        tdapBoosterdoseDate.isEnabled = true
       
        
    }
    
    func tdapsecondNoSelected(){
        
        
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
       
        
    }
    
    //********measles module************
    
    
    func measlesfirstYesSelected(){
        
        measlesFirstdoseDate.isEnabled = true
        measlesSeconddoseDate.isEnabled = true
       
        
        
    }
    
    func measlesfirstNoSelected(){
        
        measlesFirstdoseDate.isEnabled = false
        measlesSeconddoseDate.isEnabled = false
        
        measlesFirstdoseDate.text = ""
        measlesSeconddoseDate.text = ""
        
        
    }
 
    
    //********meningoco module*************
    
    
    
    func meningocofirstYesSelected(){
        
        meningocoFirstdoseDate.isEnabled = true
        meningocoSeconddoseDate.isEnabled = true
        
        
        
    }
    
    func meningocofirstNoSelected(){
        
        meningocoFirstdoseDate.isEnabled = false
        meningocoSeconddoseDate.isEnabled = false
        
        meningocoFirstdoseDate.text = ""
        meningocoSeconddoseDate.text = ""
        
        
    }
    
    
    
    func hepatitisTable(radiofirstS: String,firstdateS: String,radiosecondS: String,seconddateS: String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
           
            
                    try database.executeUpdate("update hpb set radiofirst = ?, firstdate = ?, radiosecond = ?, seconddate = ?", values: [radiofirstS,firstdateS,radiosecondS,seconddateS])
           
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    func influenzaTable(gender:String,radiofirstS: String,radiosecondS: String,radiothirdS: String,doseDateS:String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            try database.executeUpdate("update influenza set gender = ?,radiofirst = ?,radiosecond = ?,radiothird = ?, dosedate = ?", values: [gender,radiofirstS,radiosecondS,radiothirdS,doseDateS])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    func varicellaTable(radiofirstS: String,radiosecondS: String,doseOneDateS: String,doseTwoDateS:String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
           
            try database.executeUpdate("update varicella set radiofirst = ?, radiosecond = ?, doseone = ?, dosetwo = ?", values: [radiofirstS,radiosecondS,doseOneDateS,doseTwoDateS])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    func tdapTable(radiofirstS: String,firstDateS: String,radiosecondS: String,secondDateS:String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
          
            
             try database.executeUpdate("update tdap set radiofirst = ?, dateone = ?, radiosecond = ?, datetwo = ?", values: [radiofirstS,firstDateS,radiosecondS,secondDateS])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
       
        
        
    }
    
    
    
    func measlesTable(radiofirstS: String,dateoneS: String,datetwoS:String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
           
            try database.executeUpdate("update measles set radiofirst = ?, dateone = ?, datetwo = ?", values: [radiofirstS,dateoneS,datetwoS])
            
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    func meningocoTable(radiofirstS: String,dateoneS: String,datetwoS:String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            try database.executeUpdate("update meningoco set radiofirst = ?, dateone = ?, datetwo = ?", values: [radiofirstS,dateoneS,datetwoS])
            
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
}
