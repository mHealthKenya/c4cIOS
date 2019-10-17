//
//  LoginController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 15/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView

class LoginController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var creatAccountBtn: UIButton!
    @IBAction func createAccountButton(_ sender: UIButton) {
        
        createAccount()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        validate()
        
    }
    
    
    func validate(){
        
        if ((username.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Login Error", mymessage: "username is required")
        }
        else  if ((password.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Login Error", mymessage: "Password is required")
        }
        else{
            
            LoggingInUser()
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfUserExists()
        username.delegate = self
        password.delegate = self

    }
    
    private func checkIfUserExists(){
        
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select uname, password from userData", values: nil)
            if rs.next() {
                print("user exists")
                
                creatAccountBtn.isHidden=true
            }
            
        }
        catch {
           
            creatAccountBtn.isHidden=false
               print("user does not exist")
            
        }
        
        database.close()
        
        
    }
    
    private func LoggingInUser(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select uname, password from userData", values: nil)
            while rs.next() {
                let uname = rs.string(forColumn: "uname")
                let passwords = rs.string(forColumn: "password")
                
                if(username.text!==uname && password.text!==passwords){
                    
                    performSegue(withIdentifier: "loginsegue", sender: self)
                    
                    
                }
                else{
                    
                     displayErrorDialog(mytitle: "Login Error", mymessage: "Invalid details, try again")
                    
                }
                }
            }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
  
    
    func createAccount(){
        
        performSegue(withIdentifier: "createaccountsegue", sender: self)
        
    }
    
    
    fileprivate func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
    


}
