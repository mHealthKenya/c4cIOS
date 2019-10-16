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

class SignupController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var NextBtnOutlet: UIButton!
    @IBOutlet weak var securityanswer: UITextField!
    @IBOutlet weak var securityQuestion: DropDown!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    var spinner = UIActivityIndicatorView()
    
    
    @IBAction func Nextbtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tosecondsignupsegue", sender: self)
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
            
            
            verifyingNumber()
            
        }
    }
    
    
    func verifyingNumber(){
        
        let parameters: Parameters=[
            
            "phone_no":"0713559850"
            
        ]
        
        displaySpinner()
        
        Alamofire.request(URL_VERIFY_NUMBER, method: .post, parameters: parameters).responseJSON(completionHandler: {
            
            (response) in
            switch response.result{
                
            case .success(let value):
                
                self.dismissSpinner()
                
                print(value)
                self.toggleFields(myval: false)
                
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


                                let dob:String=x["DOB"] as! String
                                
                                print("DATE OF BIRTH \(dob)")
//                                let phone:String=x["phone"] as! String
//                                let password:String=x["password"] as! String
//                                let lname:String=x["lname"] as! String
//                                let fname:String=x["fname"] as! String

//                                self.insertIntoDb(email: email,phone: phone,password: password, fname: fname, lname: lname)
//                                self.goToLandingPageSegue()

                            }

                        }

                    }




                
                
                
            case .failure(let error):
                self.dismissSpinner()
                
                print(error.localizedDescription)
                
                self.displayErrorDialog(mytitle: "Signup Error", mymessage: error.localizedDescription)
            }
        })
    }
    
    
    func toggleFields(myval:Bool){
        
        userName.isHidden=myval
//        userName.removeFromSuperview()
        
        NextBtnOutlet.isHidden=myval
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
        
        securityQuestion.isHidden=myval
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
    


}
