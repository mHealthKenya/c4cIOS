//
//  SignupController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown
import SCLAlertView
import Alamofire
import SwiftyJSON


class SignupController: UIViewController ,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var secQn: UITextField!
    @IBOutlet weak var NextBtnOutlet: UIButton!
    @IBOutlet weak var securityanswer: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    var hasAccount:Bool=false
    var dob:String?
    var gender:String?
    var cadre:String?
    var idnum:String?
    var mflcode:String?
    
    var pickerView = UIPickerView()
    
    var spinner = UIActivityIndicatorView()
    
    
    @IBAction func Nextbtn(_ sender: UIButton) {
        
       
            
                print("creating account")
            
                if ((phoneNumber.text?.isEmpty)!) {
                   displayErrorDialog(mytitle: "Signup Error", mymessage: "Phone number is required")
                }
                else  if ((firstName.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "First name is required")
                }
                else  if ((lastName.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "Last name is required")
                }
                else  if ((userName.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "Username is required")
                }
                else  if ((password.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "Password is required")
                }
                else  if ((confirmPassword.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "Confirm password is required")
                }
                else  if ((secQn.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "security question is required")
                }
                else  if ((securityanswer.text?.isEmpty)!) {
                    displayErrorDialog(mytitle: "Signup Error", mymessage: "security answer is required")
                }
                else{
                
                     if(hasAccount){
                        
                        insertIntoDb(phone: phoneNumber.text!, fname: firstName.text!, lname: lastName.text!, uname: userName.text!, password: password.text!, secqn: secQn.text!, secans: securityanswer.text!, gender: self.gender!, cadre: self.cadre!, idnum: self.idnum!, age: self.dob!, mflcode: self.mflcode!)
                        
                        performSegue(withIdentifier: "signupToLoginSegue", sender: self)
                        
                    }
                     else{
                        
                        insertSignupOne(phone: phoneNumber.text!, fname: firstName.text!, lname: lastName.text!, uname: userName.text!, password: password.text!, secqn: secQn.text!, secans: securityanswer.text!)
                        
                        performSegue(withIdentifier: "tosecondsignupsegue", sender: self)
                        
                    }
                    
                    
                }
            
        
        
        
        
    }
    
    
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
    
    
    func addVerifyButton(myval:Bool){
        
        let button = UIButton(frame: CGRect(x: 20, y: 400, width: 310, height: 30))
        
        if(myval){
            
            
            button.backgroundColor = .white
            button.setTitleColor(.blue, for: .normal)
            button.tag = 100
            button.setTitle("Verify Number", for: .normal)
            button.addTarget(self, action: #selector(verifyNumber), for: .touchUpInside)
            
            self.view.addSubview(button)
            
        }
        else{
            
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                print("No!")
            }
        }
        
    }
    
    @objc func verifyNumber(sender: UIButton!) {
        if ((phoneNumber.text?.isEmpty)!) {
            
            //            displayAlertBox(mytitle:"Login Error",mymessage: "Email is required")
            
            displayErrorDialog(mytitle: "Verification Error", mymessage: "Phone number is required")
            
            
        }
        else if ((phoneNumber.text!.count) != 10) {
            
            //            displayAlertBox(mytitle:"Login Error",mymessage: "Email is required")
            
            displayErrorDialog(mytitle: "Verification Error", mymessage: "provide a valid phone number")
            
            
        }
            
        else{
            
            
            verifyingNumber(phoneNumber:phoneNumber.text!)
            
        }
    }
    
    
    func verifyingNumber(phoneNumber:String){
        
        let parameters: Parameters=[
            
            "phone_no":phoneNumber
            
        ]
        
        displaySpinner()
        
        Alamofire.request(URL_VERIFY_NUMBER, method: .post, parameters: parameters).responseJSON(completionHandler: {
            
            (response) in
            switch response.result{
                
            case .success(let value):
                
                self.dismissSpinner()
                
                print(value)
                
               
                
                
                let jsonData = value as! NSDictionary
                
//                {
//                    result =     (
//                        {
//                            DOB = "2000-06-07";
//                            "age_group" = 0;
//                            cadreOther = "-1";
//                            "cadre_id" = 3;
//                            "client_status" = "<null>";
//                            "created_at" = "<null>";
//                            "created_by" = 1;
//                            "date_registered" = "2019-06-07 16:46:22";
//                            "du_no" = "<null>";
//                            "f_name" = k;
//                            "facility_id" = 16867;
//                            firstdose = "-1";
//                            "gender_id" = 2;
//                            hbv2 = "-1";
//                            "hepatitis_b" = 3;
//                            id = 6174;
//                            "l_name" = k;
//                            level = 3;
//                            "mobile_no" = "+254713559850";
//                            modified = "<null>";
//                            "national_id" = 1234589;
//                            "partner_id" = 7;
//                            password = "<null>";
//                            registrationmode = 2;
//                            "sec_quiz" = "<null>";
//                            secans = "<null>";
//                            seconddose = "-1";
//                            "sms_enabled" = 1;
//                            specs = "<null>";
//                            "updated_at" = "2019-06-07 16:46:22";
//                            "updated_by" = 1;
//                            username = "<null>";
//                        }
//                    );
//                }
                
                
                
                
//                {
//                    data = "data available";
//                    error = 0;
//                    message =     (
//                        {
//                            date = "2019-03-23 16:13:10";
//                            email = "ken@gmail.com";
//                            fname = Kennedy;
//                            id = 2;
//                            isactive = Y;
//                            lname = sitati;
//                            password = 6c64383bfd8d7b0ed84b7d78dadb4b98;
//                            phone = 0712345678;
//                        }
//                    );
//                }
                
                print(jsonData)
               
                

                    if let json=response.result.value as! [String: Any]?{

                        if let responseUser=json["result"] as! [[String: Any]]?{

                            print(responseUser)

                            for x in responseUser{


                                self.dob=x["DOB"] as! String
                                self.gender=x["gender_id"] as! String
                                self.cadre=x["cadre_id"] as! String
                                self.idnum=x["national_id"] as! String
                                self.mflcode=x["facility_id"] as! String
                                
                                
                                print("DATE OF BIRTH \(self.dob)")
//                                let phone:String=x["phone"] as! String
//                                let password:String=x["password"] as! String
//                                let lname:String=x["lname"] as! String
//                                let fname:String=x["fname"] as! String

//                                self.insertIntoDb(email: email,phone: phone,password: password, fname: fname, lname: lname)
//                                self.goToLandingPageSegue()

                            }

                        }

                    }


                self.hasAccount=true
                self.toggleFields(myval: false)

                
                
                
            case .failure(let error):
                self.dismissSpinner()
                
                self.hasAccount=false
                self.toggleFields(myval: false)
                
                print(error.localizedDescription)
                
//                self.displayErrorDialog(mytitle: "Signup Error", mymessage: error.localizedDescription)
            }
        })
    }
    
    
    func toggleFields(myval:Bool){
        
        userName.isHidden=myval
//        userName.removeFromSuperview()
        
        NextBtnOutlet.isHidden=myval
        
        if(hasAccount){
            
            self.NextBtnOutlet.setTitle("Create Account", for: .normal)
            
        }
        else{
            
            self.NextBtnOutlet.setTitle("Next", for: .normal)

        }
        
        
        
//        NextBtnOutlet.removeFromSuperview()
    
        
        firstName.isHidden=myval
//        firstName.removeFromSuperview()
        
        lastName.isHidden=myval
//        lastName.removeFromSuperview()
        
        password.isHidden=myval
//        password.removeFromSuperview()
        
        confirmPassword.isHidden=myval
//        confirmPassword.removeFromSuperview()
        
        securityanswer.isHidden=myval
//        securityanswer.removeFromSuperview()
        
        secQn.isHidden=myval
//        securityQuestion.removeFromSuperview()
        
        addVerifyButton(myval: myval)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        securityanswer.delegate = self
        userName.delegate = self
        lastName.delegate = self
        firstName.delegate = self
        phoneNumber.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
        toggleFields(myval: true)
        

        // Do any additional setup after loading the view.
    }
    
    
    
    fileprivate func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
    
    
    fileprivate func displayNoticeDialog(mytitle:String!,mymessage:String!){
        
        
        
        SCLAlertView().showInfo(mymessage, subTitle: mytitle)
        
    }
    
    
    
    
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
    
    
    
    
    //dropdown select options
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            
            return securityQuestions[row]
        
      
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
            return securityQuestions.count
        
       
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
            secQn.text = securityQuestions[row]
            self.view.endEditing(true)
    
        
        
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickerView.delegate=self
        self.pickerView.dataSource=self
    
        secQn.inputView = pickerView
            
       
    }
    


}
