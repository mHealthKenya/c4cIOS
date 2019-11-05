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


extension ReportExposureViewController{
    

    
    @objc func dateOfFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
//        formatter.dateStyle = DateFormatter.Style.medium
//        formatter.timeStyle = DateFormatter.Style.none
        datetimeofexposure.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfFirstDose(){
        
        
               dateOfExposurepicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        
        dateOfExposurepicker.addTarget(self, action: #selector(dateOfFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        datetimeofexposure.inputView = dateOfExposurepicker
        
    }
    
    
    @objc func dateOfsecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateofinitiationcurrentpep.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfSecondDose(){
        
        dateOfPepInitpicker.datePickerMode = UIDatePicker.Mode.date
        
        dateOfPepInitpicker.addTarget(self, action: #selector(dateOfsecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        dateofinitiationcurrentpep.inputView = dateOfPepInitpicker
        
    }
    
    
    
}

extension ImmunisationProfileViewController{
    
    
    @objc func dateOfHepatitisFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
//        formatter.dateStyle = DateFormatter.Style.medium
//        formatter.timeStyle = DateFormatter.Style.none
        hepatitisFirstdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfHepatitisFirstDose(){
        
        firstDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.date
        
        firstDoseHepatitispicker.addTarget(self, action: #selector(dateOfHepatitisFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        hepatitisFirstdoseDate.inputView = firstDoseHepatitispicker
        
    }
    
    
    @objc func dateOfHepatitisSecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
//        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
          formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        hepatitisSeconddoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfHepatitisSecondDose(){
        
//        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.date
        
        secondDoseHepatitispicker.addTarget(self, action: #selector(dateOfHepatitisSecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        hepatitisSeconddoseDate.inputView = secondDoseHepatitispicker
        
    }
    
    
    
    @objc func dateOfInfluenzaDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        influenzaDosedate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfInfluenza(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        DoseInfluenzapicker.datePickerMode = UIDatePicker.Mode.date
        
        DoseInfluenzapicker.addTarget(self, action: #selector(dateOfInfluenzaDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        influenzaDosedate.inputView = DoseInfluenzapicker
        
    }
    
    
    @objc func dateOfVaricellaFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        varicellaFirstdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfVaricellaFirstDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        firstDoseVaricellapicker.datePickerMode = UIDatePicker.Mode.date
        
        firstDoseVaricellapicker.addTarget(self, action: #selector(dateOfVaricellaFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        varicellaFirstdoseDate.inputView = firstDoseVaricellapicker
        
    }
    
    
    @objc func dateOfVaricellaSecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        varicellaSeconddoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfVaricellaSecondDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        secondDoseVaricellapicker.datePickerMode = UIDatePicker.Mode.date
        
        secondDoseVaricellapicker.addTarget(self, action: #selector(dateOfVaricellaSecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        varicellaSeconddoseDate.inputView = secondDoseVaricellapicker
        
    }
    
    
    
    
    @objc func dateOfTdapValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        tdapFirstdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfTdap(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        firstDoseTdappicker.datePickerMode = UIDatePicker.Mode.date
        
        firstDoseTdappicker.addTarget(self, action: #selector(dateOfTdapValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        tdapFirstdoseDate.inputView = firstDoseTdappicker
        
    }
    
    
    
    @objc func dateOfTdapBoosterDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        tdapBoosterdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfTdapSecondDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        boosterDoseTdappicker.datePickerMode = UIDatePicker.Mode.date
        
        boosterDoseTdappicker.addTarget(self, action: #selector(dateOfTdapBoosterDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        tdapBoosterdoseDate.inputView = boosterDoseTdappicker
        
    }
    
    
    
    @objc func dateOfMeaslesFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        measlesFirstdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfMeaslesFirstDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        firstDoseMeaslespicker.datePickerMode = UIDatePicker.Mode.date
        
        firstDoseMeaslespicker.addTarget(self, action: #selector(dateOfMeaslesFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        measlesFirstdoseDate.inputView = firstDoseMeaslespicker
        
    }
    
    
    
    
    @objc func dateOfMeaslesSecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        measlesSeconddoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfMeaslesSecondDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        secondDoseMeaslespicker.datePickerMode = UIDatePicker.Mode.date
        
        secondDoseMeaslespicker.addTarget(self, action: #selector(dateOfMeaslesSecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        measlesSeconddoseDate.inputView = secondDoseMeaslespicker
        
    }
    
    
    
    
    @objc func dateOfMeningocoFirstDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        meningocoFirstdoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfMeningocoFirstDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        firstDoseMeningocopicker.datePickerMode = UIDatePicker.Mode.date
        
        firstDoseMeningocopicker.addTarget(self, action: #selector(dateOfMeningocoFirstDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        meningocoFirstdoseDate.inputView = firstDoseMeningocopicker
        
    }
    
    
    
    
    
    @objc func dateOfMeningocoSecondDoseValueChanged(sender: UIDatePicker){
        
        let formatter = DateFormatter()
        //        formatter.dateFormat = "dd/MM/yyyy hh:mm a"
        formatter.dateFormat = "dd/MM/yyyy"
        //        formatter.dateStyle = DateFormatter.Style.medium
        //        formatter.timeStyle = DateFormatter.Style.none
        meningocoSeconddoseDate.text = formatter.string(from: sender.date)
        //        self.view.endEditing(true)
        
    }
    
    func setDateOfMeningocoSecondDose(){
        
        //        secondDoseHepatitispicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        secondDoseMeningocopicker.datePickerMode = UIDatePicker.Mode.date
        
        secondDoseMeningocopicker.addTarget(self, action: #selector(dateOfMeningocoSecondDoseValueChanged(sender:)), for:  UIControl.Event.valueChanged)
        
        
        
        
        meningocoSeconddoseDate.inputView = secondDoseMeningocopicker
        
    }
    
    
}
