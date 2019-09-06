//
//  HideKeyboardOnReturn.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/09/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit

extension LoginController{
    
    func textFieldShouldReturn(_ username: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
   
    
    
}

extension SignupController{
    
    func textFieldShouldReturn(_ username: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    
}


extension SignupSecondController{
    
    func textFieldShouldReturn(_ username: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    
}


extension SignupThirdController{
    
    func textFieldShouldReturn(_ username: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    
}
