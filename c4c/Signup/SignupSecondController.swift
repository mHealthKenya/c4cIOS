//
//  SignupSecondController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import iOSDropDown

class SignupSecondController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var affiliationTextfield: UITextField!
    
    @IBOutlet weak var genderTextfield: UITextField!
    
    @IBOutlet weak var cadreTextfield: UITextField!
    
    @IBOutlet weak var dob: UITextField!

    @IBOutlet weak var idNumber: UITextField!
   
    let datepicker = UIDatePicker()
    var pickerView = UIPickerView()
    var myaffiliations:[String]=["aff1","aff2","aff3","aff4","aff5","aff6"]
    var mycadre:[String]=["cadre1","cadre2","cadre3","cadre4"]
    var mygender:[String]=["gender1","gender2","gender3","gender4"]
    var currentTextField=UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setDob()
        
        myaffiliations=["aff1","aff2","aff3","aff4","aff5","aff6"]
        mycadre=["cadre1","cadre2","cadre3","cadre4"]
        mygender=["Male","Female"]
        
        
        idNumber.delegate = self
        
       
    }

    @IBAction func Nextbtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tothirdsignupsegue", sender: self)
    }
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if(currentTextField==affiliationTextfield){
            
            return myaffiliations[row]
            
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
            
            return myaffiliations.count
            
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
        
        print(myaffiliations[row])
        
        
        if(currentTextField==affiliationTextfield){
            
            affiliationTextfield.text = myaffiliations[row]
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
