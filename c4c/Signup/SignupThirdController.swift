//
//  SignupThirdController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 14/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView


class SignupThirdController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource {

  
    @IBOutlet weak var dateOfSecondDose: UITextField!
    @IBOutlet weak var dateOfFirstDose: UITextField!
    let datepicker = UIDatePicker()
    let datepicker2 = UIDatePicker()
    
    @IBOutlet weak var countyTextfield: UITextField!
    
    @IBOutlet weak var subcountyTextfield: UITextField!
    
    @IBOutlet weak var facilityTextfield: UITextField!
    
    var pickerView = UIPickerView()
    var mycounties:[String]=[]
    var mysubcounties:[String]=[]
    var myfacilities:[String]=[]
    var currentTextField=UITextField()
    var SelectedHBVVaccinated = ""
    var selectedSecondDose = ""
    
    var spinner = UIActivityIndicatorView()
    
    
    @IBAction func SignupBtn(_ sender: UIButton) {
        
        if ((SelectedHBVVaccinated.isEmpty)) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "HBV vaccination is required")
        }
        else  if (((SelectedHBVVaccinated == "Yes") || (SelectedHBVVaccinated == "Partially")) && (dateOfFirstDose.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Date of first dose is required")
        }
        else if ((SelectedHBVVaccinated == "Yes") && (selectedSecondDose.isEmpty)) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Second dose is required")
        }
        else  if (((selectedSecondDose == "Yes")) && (dateOfSecondDose.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Date of second dose is required")
        }
        else  if ((countyTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "County is required")
        }
        else  if ((subcountyTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "SubCounty is required")
        }
        else  if ((facilityTextfield.text?.isEmpty)!) {
            displayErrorDialog(mytitle: "Signup Error", mymessage: "Facility is required")
        }
      
        else{
            
    
            performSegue(withIdentifier: "gotolandingsegue", sender: self)

            
        }
    }
    
    @IBAction func secondDoseYes(_ sender: Any) {
        
        selectedSecondDose = "Yes"
    }
    
    @IBAction func secondDoseNo(_ sender: Any) {
        
        selectedSecondDose = "No"
    }
    @IBAction func HbvNo(_ sender: Any) {
        
        SelectedHBVVaccinated = "No"
        
    }
    @IBAction func HbvPartially(_ sender: Any) {
        
        SelectedHBVVaccinated = "Partially"
        
    }
    @IBAction func HbvYes(_ sender: Any) {
        
        SelectedHBVVaccinated = "Yes"
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getCounties()
        
        
//        mycounties=["aff1","aff2","aff3","aff4","aff5","aff6"]
        mysubcounties=["cadre1","cadre2","cadre3","cadre4"]
        myfacilities=["Male","Female"]
        
        setDateOfFirstDose()
        setDateOfSecondDose()
        
//        dateOfFirstDose.delegate = self
//        dateOfSecondDose.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if(currentTextField==countyTextfield){
            
            return mycounties[row]
            
        }
        else if(currentTextField==subcountyTextfield){
            
            return mysubcounties[row]
            
        }
        else if(currentTextField==facilityTextfield){
            
            return myfacilities[row]
            
        }
        else{
            
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(currentTextField==countyTextfield){
            
            return mycounties.count
            
        }
        else if(currentTextField==subcountyTextfield){
            
            return mysubcounties.count
            
        }
        else if(currentTextField==facilityTextfield){
            
            return myfacilities.count
            
        }
        else{
            
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print(mycounties[row])
        
        
        if(currentTextField==countyTextfield){
            
            countyTextfield.text = mycounties[row]
            
            getSubCounties(countyName: mycounties[row])
            
            self.view.endEditing(true)
            
        }
        else if(currentTextField==subcountyTextfield){
            
            subcountyTextfield.text = mysubcounties[row]
            self.view.endEditing(true)
            getFacilities(subCountyName: mysubcounties[row])
            
        }
        else if(currentTextField==facilityTextfield){
            
            facilityTextfield.text = myfacilities[row]
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
        
        if(currentTextField==countyTextfield){
            
            currentTextField.inputView = pickerView
            
            
        }
        else if(currentTextField==subcountyTextfield){
            
            currentTextField.inputView = pickerView
            
        }
        else if(currentTextField==facilityTextfield){
            
            currentTextField.inputView = pickerView
            
        }
    }
    
    
    fileprivate func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
   
    


}
