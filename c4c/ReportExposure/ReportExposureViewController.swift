//
//  ReportExposureViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 24/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView

class ReportExposureViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource,UIScrollViewDelegate {
    
    @IBOutlet weak var datetimeofexposure: UITextField!
    
    @IBOutlet weak var whereexposureoccured: UITextField!
    
    @IBOutlet weak var whereother: UITextField!
    
    @IBOutlet weak var typeother: UITextField!
    
    @IBOutlet weak var typeofexposure: UITextField!
    
    @IBOutlet weak var exposurewasresultof: UITextField!
    
    @IBOutlet weak var exposureresultother: UITextField!
    
    @IBOutlet weak var whichdevice: UITextField!
    
    @IBOutlet weak var whichdeviceother: UITextField!
    
    @IBOutlet weak var devicesafetydesigned: UITextField!
    
    @IBOutlet weak var devicesafetyother: UITextField!
    
    @IBOutlet weak var describeinjury: UITextField!
    
    @IBOutlet weak var describeother: UITextField!
    
    @IBOutlet weak var purpose: UITextField!
    
    @IBOutlet weak var purposeother: UITextField!
    @IBOutlet weak var howinjuryoccured: UITextField!
    
    @IBOutlet weak var howinjuryoccurother: UITextField!
    
    @IBOutlet weak var dateofinitiationcurrentpep: UITextField!
    
    @IBOutlet weak var hivstatus: UITextField!
    
    @IBOutlet weak var hbvstatus: UITextField!
    
    @IBOutlet weak var howmanyexposures: UITextField!
    
    @IBOutlet weak var waspepinitiated: UITextField!
    
    
    @IBOutlet weak var myscrollview: UIScrollView!
    
    
    @IBOutlet weak var whereOtherConstraint: NSLayoutConstraint!
    @IBOutlet weak var whichdeviceotherConstraint: NSLayoutConstraint!
    @IBOutlet weak var resultofOtherConstraint: NSLayoutConstraint!
    @IBOutlet weak var typeofexposureOtherConstraint: NSLayoutConstraint!
    @IBOutlet weak var safetydesignedOtherConstraint: NSLayoutConstraint!
    @IBOutlet weak var whatpurposeotherConstraint: NSLayoutConstraint!
    @IBOutlet weak var describeotherConstraint: NSLayoutConstraint!
    @IBOutlet weak var howinjuryoccuredotherConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var myview: UIView!
    let dateOfExposurepicker = UIDatePicker()
    let dateOfPepInitpicker = UIDatePicker()
    
    var pickerView = UIPickerView()
    var currentTextField=UITextField()
    
    @IBAction func ReportExposureBtn(_ sender: UIButton) {
        
        validate()
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            
            scrollView.contentOffset.x = 0
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setDateOfFirstDose()
        setDateOfSecondDose()
        myscrollview.delegate = self
//        myscrollview.contentSize = CGSize(width: self.view.frame.width, height: 300)
//        contentView.frame.size.height = 300
//        myview.frame.size.height = 300

        

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        hideOthers()
        toggleFields(isHidden: true)
        
    }
    
    func toggleFields(isHidden:Bool){
        
        if(isHidden){
            
            exposurewasresultof.isEnabled = false
            exposurewasresultof.backgroundColor = .gray
            
            whichdevice.isEnabled = false
            whichdevice.backgroundColor = .gray
            
            devicesafetydesigned.isEnabled = false
            devicesafetydesigned.backgroundColor = .gray
            
            purpose.isEnabled = false
            purpose.backgroundColor = .gray
        
            
        }
        else{
            
            
            exposurewasresultof.isEnabled = true
            exposurewasresultof.backgroundColor = .white
            
            whichdevice.isEnabled = true
            whichdevice.backgroundColor = .white
            
            devicesafetydesigned.isEnabled = true
            devicesafetydesigned.backgroundColor = .white
            
            purpose.isEnabled = true
            purpose.backgroundColor = .white
            
        }
    }
    
    
    func hideOthers(){
        
        whereother.isHidden = true
        whereother.text = ""
        whereOtherConstraint.constant = -40
        
        exposureresultother.isHidden=true
        exposureresultother.text=""
        resultofOtherConstraint.constant = -40
        
        
        whichdeviceother.isHidden=true
        whichdeviceother.text=""
        whichdeviceotherConstraint.constant = -40
        
        devicesafetyother.isHidden=true
        devicesafetyother.text=""
        safetydesignedOtherConstraint.constant = -40
        
        describeother.isHidden=true
        describeother.text=""
        describeotherConstraint.constant = -40
        
        purposeother.isHidden=true
        purposeother.text=""
        whatpurposeotherConstraint.constant = -40
        
        howinjuryoccurother.isHidden=true
        howinjuryoccurother.text=""
        howinjuryoccuredotherConstraint.constant = -40
        
        typeother.isHidden=true
        typeother.text=""
        typeofexposureOtherConstraint.constant = -40
        
    }
    
    
    /********************************************************new code here*********************/
    
    
    
    func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if(currentTextField==whereexposureoccured){
            
            return SPINNERLISTWHERE[row]
            
        }
        else if(currentTextField==typeofexposure){
            
            return SPINNERLISTWHAT[row]
            
        }
        else if(currentTextField==exposurewasresultof){
            
            return SPINNERLISTEXPOSURERESULT[row]
            
        }
        else if(currentTextField==whichdevice){
            
            return SPINNERLISTDEVICE[row]
            
        }
        else if(currentTextField==devicesafetydesigned){
            
            return SPINNERLISTSAFETY[row]
            
        }
        else if(currentTextField==describeinjury){
            
            return SPINNERLISTDEEPALGORITHM[row]
            
        }
        else if(currentTextField==purpose){
            
            return SPINNERLISTPURPOSE[row]
            
        }
        else if(currentTextField==howinjuryoccured){
            
            return SPINNERLISTWHEN[row]
            
        }
       
        else if(currentTextField==hivstatus){
            
            return SPINNERLISTHIVSTATUS[row]
            
        }
        else if(currentTextField==hbvstatus){
            
            return SPINNERLISTHBVSTATUS[row]
            
        }
        else if(currentTextField==waspepinitiated){
            
            return SPINNERLISTPEPINIT[row]
            
        }
            
        else{
            
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(currentTextField==whereexposureoccured){
            
            return SPINNERLISTWHERE.count
            
        }
        else if(currentTextField==typeofexposure){
            
            return SPINNERLISTWHAT.count
            
        }
        else if(currentTextField==exposurewasresultof){
            
            return SPINNERLISTEXPOSURERESULT.count
            
        }
        else if(currentTextField==whichdevice){
            
            return SPINNERLISTDEVICE.count
            
        }
        else if(currentTextField==devicesafetydesigned){
            
            return SPINNERLISTSAFETY.count
            
        }
        else if(currentTextField==describeinjury){
            
            return SPINNERLISTDEEPALGORITHM.count
            
        }
        else if(currentTextField==purpose){
            
            return SPINNERLISTPURPOSE.count
            
        }
        else if(currentTextField==howinjuryoccured){
            
            return SPINNERLISTWHEN.count
            
        }
    
        else if(currentTextField==hivstatus){
            
            return SPINNERLISTHIVSTATUS.count
            
        }
        else if(currentTextField==hbvstatus){
            
            return SPINNERLISTHBVSTATUS.count
            
        }
        else if(currentTextField==waspepinitiated){
            
            return SPINNERLISTPEPINIT.count
            
        }
        
        else{
            
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
//        print(affiliation[row])
        
        
      
        
        
        if(currentTextField==whereexposureoccured){
            
            whereexposureoccured.text = SPINNERLISTWHERE[row]
            
            if(SPINNERLISTWHERE[row].lowercased().contains("other")){
                
                
                whereother.isHidden = false
                whereOtherConstraint.constant = 40
                
            
            }
            else{
                
                whereother.isHidden = true
                whereother.text = ""
                whereOtherConstraint.constant = -40

            }
            self.view.endEditing(true)
            
        }
        else if(currentTextField==typeofexposure){
            
            typeofexposure.text = SPINNERLISTWHAT[row]
            
            if(SPINNERLISTWHAT[row].lowercased().contains("other")){
                
                
                typeother.isHidden = false
                typeofexposureOtherConstraint.constant = 40
                toggleFields(isHidden: true)
                
                
            }
                
            else if(SPINNERLISTWHAT[row].lowercased().contains("cuts") || SPINNERLISTWHAT[row].lowercased().contains("needle stick")){
                
                
                typeother.isHidden = true
                typeofexposureOtherConstraint.constant = -40
                toggleFields(isHidden: false)
                
                
            }
            else{
                toggleFields(isHidden: true)
                
                typeother.isHidden = true
                typeother.text = ""
                typeofexposureOtherConstraint.constant = -40
                
            }
            self.view.endEditing(true)
          
            
        }
        else if(currentTextField==exposurewasresultof){
            
            exposurewasresultof.text = SPINNERLISTEXPOSURERESULT[row]
            self.view.endEditing(true)
            
           
            
        }
        else if(currentTextField==whichdevice){
            
            whichdevice.text = SPINNERLISTDEVICE[row]
            self.view.endEditing(true)
            
           
            
        }
        else if(currentTextField==devicesafetydesigned){
            
            devicesafetydesigned.text = SPINNERLISTSAFETY[row]
            self.view.endEditing(true)
            
        
            
        }
        else if(currentTextField==describeinjury){
            
            describeinjury.text = SPINNERLISTDEEPALGORITHM[row]
            self.view.endEditing(true)
            
        
            
        }
        else if(currentTextField==purpose){
            
            purpose.text = SPINNERLISTPURPOSE[row]
            self.view.endEditing(true)
           
            
        }
        else if(currentTextField==howinjuryoccured){
            
            howinjuryoccured.text = SPINNERLISTWHEN[row]
            self.view.endEditing(true)
            
            
        }
    
        else if(currentTextField==hivstatus){
            
            hivstatus.text = SPINNERLISTHIVSTATUS[row]
            self.view.endEditing(true)
            
            
        }
        else if(currentTextField==hbvstatus){
            
            hbvstatus.text = SPINNERLISTHBVSTATUS[row]
            self.view.endEditing(true)
            
            
            
        }
        else if(currentTextField==waspepinitiated){
            
            waspepinitiated.text = SPINNERLISTPEPINIT[row]
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
        
        if(currentTextField==whereexposureoccured){
            
            currentTextField.inputView = pickerView
            
            
        }
       
        else if(currentTextField==typeofexposure){
            
             currentTextField.inputView = pickerView
            
            
        }
        else if(currentTextField==exposurewasresultof){
            
             currentTextField.inputView = pickerView
            
            
            
        }
        else if(currentTextField==whichdevice){
            
             currentTextField.inputView = pickerView
            
            
            
        }
        else if(currentTextField==devicesafetydesigned){
            
             currentTextField.inputView = pickerView
            
            
            
        }
        else if(currentTextField==describeinjury){
            
            currentTextField.inputView = pickerView
            
            
            
        }
        else if(currentTextField==purpose){
            
            currentTextField.inputView = pickerView
            
            
        }
        else if(currentTextField==howinjuryoccured){
            
            currentTextField.inputView = pickerView
            
            
        }
            
        else if(currentTextField==hivstatus){
            
             currentTextField.inputView = pickerView
            
            
        }
        else if(currentTextField==hbvstatus){
            
             currentTextField.inputView = pickerView
            
            
            
        }
        else if(currentTextField==waspepinitiated){
            
             currentTextField.inputView = pickerView
            
            
            
        }
        
    }
    
   
    
    
    /****************************************end new code here *************************************/
    
    

}
