//
//  SignupThirdController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 14/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class SignupThirdController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var dateOfSecondDose: UITextField!
    @IBOutlet weak var dateOfFirstDose: UITextField!
    let datepicker = UIDatePicker()
    
    @IBAction func SignupBtn(_ sender: UIButton) {
        
        print("signing up")
        performSegue(withIdentifier: "gotolandingsegue", sender: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setDateFirstDose()
        
//        dateOfFirstDose.delegate = self
        dateOfSecondDose.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
   
    


}
