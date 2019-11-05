//
//  SignupTables.swift
//  c4c
//
//  Created by MHEALTH KENYA on 22/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation

import UIKit

extension SignupController{
    
    
    

func insertSignupOne(phone: String,fname: String,lname: String,uname: String,password: String,secqn: String,secans: String){
    
    
    let fileURL = try! FileManager.default
        .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        .appendingPathComponent("userdb.sqlite")
    
    let database = FMDatabase(url: fileURL)
    
    guard database.open() else {
        print("Unable to open database")
        return
    }
    
    do {
        try database.executeUpdate("create table if not exists signupOne(phone text, fname text,lname text,uname text,password text,secqn text,secans text)", values: nil)
        try database.executeUpdate("delete from signupOne",values:nil)
        try database.executeUpdate("insert into signupOne (phone,fname,lname,uname,password,secqn,secans) values (?, ?, ?, ?, ?, ?, ?)", values: [phone,fname,lname,uname,password,secqn,secans])
        
//        try database.executeUpdate("update test set x = ? where y = ?", values: ["foo", "bar"])
        
    } catch {
        print("failed: \(error.localizedDescription)")
    }
    
    database.close()
    
    
}
    
    
    
    
    
    func hepatitisTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists hpb(radiofirst text, firstdate text,radiosecond text,seconddate text)", values: nil)

            
            try database.executeUpdate("insert into hpb (radiofirst,firstdate,radiosecond,seconddate) values (?, ?, ?, ?)", values: ["","","",""])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    func influenzaTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists influenza(gender text,radiofirst text,radiosecond text,radiothird text,dosedate text)", values: nil)
            
            try database.executeUpdate("delete from influenza",values:nil)
            
            try database.executeUpdate("insert into influenza (gender,radiofirst,radiosecond,radiothird,dosedate) values (?, ?, ?, ?, ?)", values: ["test","test","test","test","test"])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    func varicellaTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists varicella(radiofirst text,radiosecond text,doseone text,dosetwo text)", values: nil)
            
            try database.executeUpdate("delete from varicella",values:nil)
            
            try database.executeUpdate("insert into varicella (radiofirst,radiosecond,doseone,dosetwo) values (?, ?, ?, ?)", values: ["","","",""])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    func tdapTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists tdap(radiofirst text,dateone text,radiosecond text,datetwo text)", values: nil)
            
            try database.executeUpdate("delete from tdap",values:nil)
            
            try database.executeUpdate("insert into tdap (radiofirst,dateone,radiosecond,datetwo) values (?, ?, ?, ?)", values: ["","","",""])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
        
    }
    
    
    
    func measlesTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists measles(radiofirst text,dateone text,datetwo text)", values: nil)
            
            try database.executeUpdate("delete from measles",values:nil)
            
            try database.executeUpdate("insert into measles (radiofirst,dateone,datetwo) values (?, ?, ?)", values: ["","",""])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    func meningocoTable(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists meningoco(radiofirst text,dateone text,datetwo text)", values: nil)
            
            try database.executeUpdate("delete from meningoco",values:nil)
            
            try database.executeUpdate("insert into meningoco (radiofirst,dateone,datetwo) values (?, ?, ?)", values: ["","",""])
            
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



}

extension SignupSecondController{
    
    
    
    
    func insertSignupTwo(affiliation: String,gender: String,cadre: String,idnumber: String,dob: String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists signupTwo(affiliation text, gender text,cadre text,idnumber text,dob text)", values: nil)
            try database.executeUpdate("delete from signupTwo",values:nil)
            try database.executeUpdate("insert into signupTwo (affiliation,gender,cadre,idnumber,dob) values (?, ?, ?, ?, ?)", values: [affiliation,gender,cadre,idnumber,dob])
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
}

extension SignupThirdController{
    
    
    private func insertIntoDb(phone: String,fname: String,lname: String,uname: String,password: String,secqn: String,secans: String,gender: String,cadre: String,idnum: String,age: String,mflcode: String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists userData(phone text, fname text,lname text,uname text,password text,secqn text,secans text,gender text,cadre text,idnum text,age text,mflcode text)", values: nil)
            try database.executeUpdate("delete from userData",values:nil)
            try database.executeUpdate("insert into userData (phone,fname,lname,uname,password,secqn,secans,gender,cadre,idnum,age,mflcode) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", values: [phone,fname,lname,uname,password,secqn,secans,gender,cadre,idnum,age,mflcode])
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
}
