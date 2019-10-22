//
//  DatePickers.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/09/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit

extension SignupSecondController{
    
    
    @objc func dobValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dob.text = formatter.string(from: sender.date)
//        self.view.endEditing(true)
        
    }
    
    func setDob(){
        
        datepicker.datePickerMode = UIDatePicker.Mode.date
        
        datepicker.addTarget(self, action: #selector(dobValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dob.inputView = datepicker
        
    }
}

extension SignupThirdController{

    
    
   
    @objc func dateOfFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateOfFirstDose.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfFirstDose(){
        
        datepicker.datePickerMode = UIDatePicker.Mode.date
        
        datepicker.addTarget(self, action: #selector(dateOfFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dateOfFirstDose.inputView = datepicker
        
    }
    
    
    @objc func dateOfsecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateOfSecondDose.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfSecondDose(){
        
        datepicker2.datePickerMode = UIDatePicker.Mode.date
        
        datepicker2.addTarget(self, action: #selector(dateOfsecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dateOfSecondDose.inputView = datepicker2
        
    }
    

    
}
