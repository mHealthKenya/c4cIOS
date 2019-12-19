//
//  BroadcastViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 25/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView
import Alamofire
import SwiftyJSON

class BroadcastViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource ,UIScrollViewDelegate{
    
    
    let dateOfBroadcastpicker = UIDatePicker()
    
    var pickerView = UIPickerView()
    var currentTextField=UITextField()
    var spinner = UIActivityIndicatorView()
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            
            scrollView.contentOffset.x = 0
            
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(currentTextField==broadcastCadre){
            
            return SPINNERLISTCADRE.count
            
        }
        else{
            
            return 0
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(currentTextField==broadcastCadre){
            
            return SPINNERLISTCADRE[row]
            
        }
        else{
            
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        broadcastCadre.text = SPINNERLISTCADRE[row]
        
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickerView.delegate=self
        self.pickerView.dataSource=self
        currentTextField=textField
        
        if(currentTextField==broadcastCadre){
            
            currentTextField.inputView = pickerView
            
            
        }
            
      
        
    }
    
    
    
    
    func displaySpinner(){
        
        
        spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        spinner.style = UIActivityIndicatorView.Style.init(rawValue: 10)!
        spinner.center=view.center
        spinner.color = .red
        spinner.hidesWhenStopped = true
        view.addSubview(spinner)
        spinner.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    func dismissSpinner(){
        
        spinner.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
        
    }
    
    
    @IBOutlet weak var myscrollview: UIScrollView!
    
    @IBOutlet weak var broadcastTitle: UITextField!
    
    @IBOutlet weak var broadcastMessage: UITextView!
    
    
    @IBOutlet weak var broadcastCadre: UITextField!
    

    @IBOutlet weak var broadcastDate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title="Broadcast"
        setDateOfBroadcast()
         myscrollview.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBroadcast(_ sender: UIButton) {
        
        validate()
    }
    
    
    
    private func validate(){
        
        if(broadcastTitle.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Error", mymessage: "Title is required")
            
        }
        else if(broadcastMessage.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Error", mymessage: "Message is required")
            
        }
        else if(broadcastCadre.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Error", mymessage: "Cadre is required")
            
        }
        else if(broadcastDate.text!.isEmpty){
            
            displayErrorDialog(mytitle: "Error", mymessage: "Date is required")
            
        }
        else{
            
            reportExposureRemotely(message: broadcastMessage.text!, date: broadcastDate.text!, cadre: broadcastCadre.text!, bname: broadcastTitle.text!, phone: getUserPhoneNumber())
            
            
        }
    }
    
    
    
    func reportExposureRemotely(message:String,date:String,cadre:String,bname:String,phone:String){
        
        let parameters: Parameters=[
            
            "text":message,
            "sendDate":date,
            "cdr":cadre,
            "bname":bname,
            "phone":phone
            
            
        ]
        
        displaySpinner()
        
        Alamofire.request(BROADCAST_URL, method: .post, parameters: parameters).responseString { response in
            self.dismissSpinner()
            
            
            self.displaySuccessDialog(mytitle: "Broadcast", mymessage: response.description)
            print(response.description)
            
        }
        
        
    }
    
    
    private func getUserPhoneNumber()->String{
        
        var phone:String=""
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            phone=""
            return phone
            
        }
        
        do {
            
            
            let rs = try database.executeQuery("select phone from userData", values: nil)
            while rs.next() {
                phone = rs.string(forColumn: "phone")!
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        return phone
        
    }
    
    
    
    
    fileprivate func displayErrorDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showError(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
    
    
    
    fileprivate func displaySuccessDialog(mytitle:String!,mymessage:String!){
        
        SCLAlertView().showSuccess(mymessage, subTitle:mytitle, closeButtonTitle:"OK")
    }
  

}
