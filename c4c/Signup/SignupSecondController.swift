//
//  SignupSecondController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown
import SCLAlertView

class SignupSecondController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var affiliationTextfield: UITextField!
    
    @IBOutlet weak var genderTextfield: UITextField!
    
    @IBOutlet weak var cadreTextfield: UITextField!
    
    @IBOutlet weak var dob: UITextField!

    @IBOutlet weak var idNumber: UITextField!
   
    let datepicker = UIDatePicker()
    var pickerView = UIPickerView()
    var currentTextField=UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setDob()
        idNumber.delegate = self
        
       
    }

    @IBAction func Nextbtn(_ sender: UIButton) {
        
        
    
        
        if ((affiliationTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "affiliation is required")
        }
        else  if ((genderTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "gender is required")
        }
        else  if ((cadreTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Cadre is required")
        }
        else  if ((dob.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Date of birth is required")
        }
        else  if ((idNumber.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Id number is required")
        }
        else{
          
                
                insertSignupTwo(affiliation: affiliationTextfield.text!, gender: genderTextfield.text!, cadre: cadreTextfield.text!, idnumber: idNumber.text!, dob: dob.text!)
                
                performSegue(withIdentifier: "tothirdsignupsegue", sender: self)
           
        }
        
        
    }
    
    
    fileprivate func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if(currentTextField==affiliationTextfield){
            
            return affiliation[row]
            
        }
        else if(currentTextField==genderTextfield){
            
            return mygender[row]
            
        }
        else if(currentTextField==cadreTextfield){
            
            return mycadre[row]
            
        }
        else{
            
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(currentTextField==affiliationTextfield){
            
            return affiliation.count
            
        }
        else if(currentTextField==genderTextfield){
            
            return mygender.count
            
        }
        else if(currentTextField==cadreTextfield){
            
            return mycadre.count
            
        }
        else{
            
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print(affiliation[row])
        
        
        if(currentTextField==affiliationTextfield){
            
            affiliationTextfield.text = affiliation[row]
            self.view.endEditing(true)
            
        }
        else if(currentTextField==genderTextfield){
            
            genderTextfield.text = mygender[row]
            self.view.endEditing(true)
            
        }
        else if(currentTextField==cadreTextfield){
            
            cadreTextfield.text = mycadre[row]
            self.view.endEditing(true)
            
        }
    
       
        
    }
    
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickerView.delegate=self
        self.pickerView.dataSource=self
        currentTextField=textField
        
        if(currentTextField==affiliationTextfield){
            
            currentTextField.inputView = pickerView
            
            
        }
        else if(currentTextField==genderTextfield){
            
            currentTextField.inputView = pickerView
            
        }
        else if(currentTextField==cadreTextfield){
            
            currentTextField.inputView = pickerView
            
        }
    }

}
