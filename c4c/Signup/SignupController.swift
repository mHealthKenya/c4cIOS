//
//  SignupController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown

class SignupController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var securityanswer: UITextField!
    @IBOutlet weak var securityQuestion: DropDown!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    
    @IBAction func Nextbtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tosecondsignupsegue", sender: self)
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

        // Do any additional setup after loading the view.
    }
    


}
