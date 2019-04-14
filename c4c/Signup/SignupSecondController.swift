//
//  SignupSecondController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown

class SignupSecondController: UIViewController {

    @IBAction func Nextbtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tothirdsignupsegue", sender: self)
    }
    
    @IBOutlet weak var affiliationdropdown: DropDown!
    
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var fname: UITextField!
    
    let datepicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDob()
        setAffiliationsDropDown()
       
        
        
    }
    
    fileprivate func setAffiliationsDropDown(){
        
        affiliationdropdown.optionArray = countries
        affiliationdropdown.optionIds = ids
        affiliationdropdown.arrowSize = 10
        affiliationdropdown.isSearchEnable = true
        
    }
    
    @objc func dobValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dob.text = formatter.string(from: sender.date)
        
    }
    
    fileprivate func setDob(){
        
        datepicker.datePickerMode = UIDatePicker.Mode.date
        
        datepicker.addTarget(self, action: #selector(SignupSecondController.dobValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dob.inputView = datepicker
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
