//
//  LoginController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 15/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBAction func createAccountButton(_ sender: UIButton) {
        
        createAccount()
    }
    @IBAction func loginButton(_ sender: UIButton) {
        
        login()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func login(){
        
        performSegue(withIdentifier: "loginsegue", sender: self)
        
    }
    
    func createAccount(){
        
        performSegue(withIdentifier: "createaccountsegue", sender: self)
        
    }
    


}
