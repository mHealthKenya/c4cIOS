//
//  SignupThirdController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 14/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit


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
    
    var spinner = UIActivityIndicatorView()
    
    
    @IBAction func SignupBtn(_ sender: UIButton) {
        
        print("signing up")
        performSegue(withIdentifier: "gotolandingsegue", sender: self)
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
   
    


}
