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
        
    }
    
    func setDob(){
        
        datepicker.datePickerMode = UIDatePicker.Mode.date
        
        datepicker.addTarget(self, action: #selector(dobValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dob.inputView = datepicker
        
    }
}

extension SignupThirdController{
    
    
    
    
    
    @objc func firstDoseDateValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateOfFirstDose.text = formatter.string(from: sender.date)
        
    }
    
    
    
    
     func setDateFirstDose(){
        
        datepicker.datePickerMode = UIDatePicker.Mode.date
        
        dateOfFirstDose.addTarget(self, action: #selector(firstDoseDateValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dateOfFirstDose.inputView = datepicker
        
    }
    
    
    
    
    
    
}
