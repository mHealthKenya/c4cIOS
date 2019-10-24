//
//  SignupThirdController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 14/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView
import Alamofire
import SwiftyJSON


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
    var fname=""
    var lname=""
    var phone=""
    var gender=""
    var cadre=""
    var othercadre="-1"
    var idno=""
    var dob=""
    var mflno=""
    var hbv1="-1"
    var dose1="-1"
    var hbv2="-1"
    var dose2="-1"
    var secqn=""
    var password=""
    var secans=""
    var uname=""
    var partner=""
    
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
            hbv1=SelectedHBVVaccinated
            if(dateOfFirstDose.text!.isEmpty){
                
                dose1="-1"
            }
            else{
                
                dose1=dateOfFirstDose.text!
            }
            if(selectedSecondDose.isEmpty){
                hbv2="-1"
            }
            else{
                hbv2=selectedSecondDose
            }
            if(dateOfSecondDose.text!.isEmpty){
                
                dose2="-1"
            }
            else{
                
                dose2=dateOfSecondDose.text!
            }
            
            getFirstSignupDetails()
            getSecondSignupDetails()
            getSavedMflcode()
            


            registerUserRemotely()
            printValues()
            
           

            
        }
    }
    
    func printValues(){
        print("fname => \(fname)")
         print("lname => \(lname)")
         print("phone => \(phone)")
         print("partner => \(partner)")
         print("gender => \(gender)")
         print("cdr => \(cadre)")
         print("other cadre => \(othercadre)")
         print("idno => \(idno)")
         print("dob => \(dob)")
         print("mfl => \(mflno)")
        print("hbv1 => \(hbv1)")
        print("dose1 => \(dose1)")
        print("hbv2 => \(hbv2)")
        print("dose2 => \(dose2)")
        
    }
    
    
    
    private func getSecondSignupDetails(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select affiliation, gender, cadre, idnumber, dob from signupTwo", values: nil)
            while rs.next() {
                
                partner = String((affiliation.index(of: rs.string(forColumn: "affiliation")!))!+1)
                gender = String((mygender.index(of: rs.string(forColumn: "gender")!))!+1)
                cadre = String((mycadre.index(of: rs.string(forColumn: "cadre")!))!+1)
                idno = rs.string(forColumn: "idnumber")!
                dob = rs.string(forColumn: "dob")!
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    private func getFirstSignupDetails(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select phone, fname, lname, uname, password, secqn, secans from signupOne", values: nil)
            while rs.next() {
                uname = rs.string(forColumn: "uname")!
                phone = rs.string(forColumn: "phone")!
                fname = rs.string(forColumn: "fname")!
                lname = rs.string(forColumn: "lname")!
                password = rs.string(forColumn: "password")!
                secqn = rs.string(forColumn: "secqn")!
                secans = rs.string(forColumn: "secans")!
                
            
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    private func getSavedMflcode(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select name, mflcode from facilities", values: nil)
            while rs.next() {
                
                let facilityname = rs.string(forColumn: "name")!
                print("saved facility name \(rs.string(forColumn: "name")!) saved facility code \(rs.string(forColumn: "mflcode")) active facility \(facilityTextfield.text)")
                
                if(facilityname == facilityTextfield.text){

                    mflno = rs.string(forColumn: "mflcode")!

                }
              
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
       
    }
    
    
    @IBAction func secondDoseYes(_ sender: Any) {
        
        selectedSecondDose = "2"
    }
    
    @IBAction func secondDoseNo(_ sender: Any) {
        
        selectedSecondDose = "1"
    }
    @IBAction func HbvNo(_ sender: Any) {
        
        SelectedHBVVaccinated = "1"
        
    }
    @IBAction func HbvPartially(_ sender: Any) {
        
        SelectedHBVVaccinated = "3"
        
    }
    @IBAction func HbvYes(_ sender: Any) {
        
        SelectedHBVVaccinated = "2"
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getCounties()
        
        
//        mycounties=["aff1","aff2","aff3","aff4","aff5","aff6"]
//        mysubcounties=["cadre1","cadre2","cadre3","cadre4"]
//        myfacilities=["Male","Female"]
        
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
    
    

    func registerUserRemotely(){
        
        let parameters: Parameters=[
            
            "fname":fname,
            "lname":lname,
            "phone_no":phone,
            "partner":partner,
            "gender":gender,
            "cdr":cadre,
            "other_cadre":othercadre,
            "idno":idno,
            "dob":dob,
            "mflno":mflno,
            "hbv1":hbv1,
            "dose1":dose1,
            "hbv2":hbv2,
            "dose2":dose2
            
        ]
        
        displaySpinner()
        
        Alamofire.request(CREATPROFILE_URL, method: .post, parameters: parameters).responseString { response in
            self.dismissSpinner()
            print(response.description)
            if(response.description.lowercased().contains("welldone")){
                
                            self.insertIntoDb(phone: self.phone, fname: self.fname, lname: self.lname, uname: self.uname, password: self.password, secqn: self.secqn, secans: self.secans, gender: self.gender, cadre: self.cadre, idnum: self.idno, age: self.dob, mflcode: self.mflno)
                
                self.goToLandingPage()
                
                
            }
            else{
                
                self.displayErrorDialog(mytitle: "Signup Error", mymessage: "\(response.description)")
                
            }
        }
            

    }
    
    
    private func goToLandingPage(){
        
        performSegue(withIdentifier: "gotolandingsegue", sender: self)

    }
    
    
    private func insertIntoDb(phone: String,fname: String,lname: String,uname: String,password: String,secqn: String,secans: String,gender: String,cadre: String,idnum: String,age: String,mflcode: String){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            try database.executeUpdate("create table if not exists userData(phone text, fname text,lname text,uname text,password text,secqn text,secans text,gender text,cadre text,idnum text,age text,mflcode text)", values: nil)
            try database.executeUpdate("delete from userData",values:nil)
            try database.executeUpdate("insert into userData (phone,fname,lname,uname,password,secqn,secans,gender,cadre,idnum,age,mflcode) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", values: [phone,fname,lname,uname,password,secqn,secans,gender,cadre,idnum,age,mflcode])
            
        } catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
   
    
    
    fileprivate func displaySpinner(){
        
        
        spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        spinner.style = UIActivityIndicatorView.Style.init(rawValue: 10)!
        spinner.center=view.center
        spinner.color = .red
        spinner.hidesWhenStopped = true
        view.addSubview(spinner)
        spinner.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    fileprivate func dismissSpinner(){
        
        spinner.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
        
    }


}
