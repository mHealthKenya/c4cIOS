//
//  SignupSecondController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown

class SignupSecondController: UIViewController,UITextFieldDelegate {

    @IBAction func Nextbtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tothirdsignupsegue", sender: self)
    }
    
    @IBOutlet weak var affiliationdropdown: DropDown!
    
    @IBOutlet weak var dob: UITextField!
    
 
    @IBOutlet weak var idNumber: UITextField!
    
    @IBOutlet weak var cadredropdown: DropDown!
    @IBOutlet weak var genderdropdown: DropDown!
    let datepicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDob()
        setAffiliationsDropDown()
        setGendersDropDown()
        setCadresDropDown()
        idNumber.delegate = self
       
        
        
    }
    
    fileprivate func setAffiliationsDropDown(){
        
        affiliationdropdown.optionArray = affiliations
        affiliationdropdown.optionIds = affiliationIds
        affiliationdropdown.arrowSize = 10
        affiliationdropdown.isSearchEnable = true
        
    }
    
    fileprivate func setGendersDropDown(){
        
        genderdropdown.optionArray = genders
        genderdropdown.optionIds = genderIds
        genderdropdown.arrowSize = 10
        genderdropdown.isSearchEnable = true
        
    }
    
    fileprivate func setCadresDropDown(){
        
        cadredropdown.optionArray = cadres
        cadredropdown.optionIds = cadreIds
        cadredropdown.arrowSize = 10
        cadredropdown.isSearchEnable = true
        
    }
    
   
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
