//
//  ImmunisationProfileViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import DLRadioButton

class ImmunisationProfileViewController: UIViewController,UIScrollViewDelegate {
    
    
    let firstDoseHepatitispicker = UIDatePicker()
    let secondDoseHepatitispicker = UIDatePicker()
    let DoseInfluenzapicker = UIDatePicker()
    let firstDoseVaricellapicker = UIDatePicker()
    let secondDoseVaricellapicker = UIDatePicker()
    let firstDoseTdappicker = UIDatePicker()
    let boosterDoseTdappicker = UIDatePicker()
    let firstDoseMeaslespicker = UIDatePicker()
    let secondDoseMeaslespicker = UIDatePicker()
    let firstDoseMeningocopicker = UIDatePicker()
    let secondDoseMeningocopicker = UIDatePicker()
    
    
    @IBOutlet weak var hepatitisFirstdoseDate: UITextField!
    
    @IBOutlet weak var hepatitisSeconddoseDate: UITextField!
    
    @IBOutlet weak var influenzaDosedate: UITextField!
    
    @IBOutlet weak var varicellaFirstdoseDate: UITextField!
    
    
    @IBOutlet weak var varicellaSeconddoseDate: UITextField!
    
    
    @IBOutlet weak var tdapFirstdoseDate: UITextField!
    
    
    @IBOutlet weak var tdapBoosterdoseDate: UITextField!
    
    
    @IBOutlet weak var measlesFirstdoseDate: UITextField!
    
    @IBOutlet weak var measlesSeconddoseDate: UITextField!
    
    
    @IBOutlet weak var meningocoFirstdoseDate: UITextField!
    
    
    @IBOutlet weak var meningocoSeconddoseDate: UITextField!
    
    @IBOutlet weak var myscrollview: UIScrollView!
   
    
      //***************set button actions for radiobuttons********
    
    @IBAction func HepatitisVaccinationYes(_ sender: Any) {
        
        hpbFirstYesSelected()
    }
    
    
    @IBAction func HepatitisVaccinationPartially(_ sender: Any) {
        
        hpbFirstPartiallySelected()
    }
    
    
    @IBAction func HepatitisVaccinationNo(_ sender: Any) {
        
        hpbFirstNoSelected()
    }
    
    
    @IBAction func HepatitisSecondDoseYes(_ sender: Any) {
        
        hpbSecondYesSelected()
    }
    
    
    @IBAction func HepatitisSecondDoseNo(_ sender: Any) {
        
        hpbSecondNoSelected()
    }
    
    
    
    @IBAction func InfluenzaPregnantYes(_ sender: Any) {
        
        influenzafirstYesSelected()
    }
    
    
    @IBAction func InfluenzaPregnantNo(_ sender: Any) {
        
        influenzafirstNoSelected()
    }
    
    
    @IBAction func InfluenzaTrimesterFirst(_ sender: Any) {
        
        influenzaFirstTrimesterSelected()
        
    }
    
    @IBAction func InfluenzaTrimesterSecond(_ sender: Any) {
        
        influenzaSecondTrimesterSelected()
        
    }
    
    
    @IBAction func InfluenzaTrimesterThird(_ sender: Any) {
        
        influenzaThirdtrimesterSelected()
        
    }
    
    
    
    @IBAction func InfluenzaVaccinationYes(_ sender: Any) {
        
        influenzaSecondYesSelected()
    }
    
    
    @IBAction func InfluenzaVaccinationNo(_ sender: Any) {
        
        influenzaSecondNoselected()
        
    }
    
    
    
    @IBAction func VaricellaVaccinationYes(_ sender: Any) {
        
        varicellafirstYesSelected()
    }
    
    
    @IBAction func VaricellaVaccinationNo(_ sender: Any) {
        
        varicellafirstNoSelected()
        
    }
    
    
    
    @IBAction func VaricellaHistoryYes(_ sender: Any) {
        
        varicellasecondYesSelected()
       
    }
    
    
    @IBAction func VaricellaHistoryNo(_ sender: Any) {
        
        varicellasecondNoSelected()
      
    }
    
    
    
    @IBAction func TdapImmunisedYes(_ sender: Any) {
        
        tdapfirstYesSelected()
        
    }
    
    
    
    @IBAction func TdapImmunisedNo(_ sender: Any) {
        
        tdapfirstNoSelected()
        
    }
    
    
    @IBAction func TdapBoosterYes(_ sender: Any) {
        
        tdapsecondYesSelected()
        
    }
    
    @IBAction func TdapBoosterNo(_ sender: Any) {
        
        tdapsecondNoSelected()
        
    }
    
    
    @IBAction func MeaslesImmunisationYes(_ sender: Any) {
        
        measlesfirstYesSelected()
        
    }
    
    
    @IBAction func MeaslesImmunisationNo(_ sender: Any) {
        
        measlesfirstNoSelected()
    }
    
    
    @IBAction func MeningocoImmunisationYes(_ sender: Any) {
        
        meningocofirstYesSelected()
    }
    
    
    @IBAction func MeningocoImmunisationNo(_ sender: Any) {
        
        meningocofirstNoSelected()
        
    }
    
    
    
    
    
    
    
    @IBAction func UpdateProfileBtn(_ sender: Any) {
        
        
        setHepatitisTableData()
        getHepatitisSavedData()
        
        
        
        
    }
    
    func setHepatitisTableData(){
    
        
        var radiofirst = ""
        var firstdate = ""
        var radiosecond = ""
        var seconddate = ""
        
        
        if(HepatitisVaccinationYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
        if(HepatitisVaccinationNoOutlet.isSelected){
            
            radiofirst = "No"
        }
        
        if(HepatitisVaccinationPartiallyOutlet.isSelected){
            
            radiofirst = "Partially"
        }
        
        
        if(HepatitisSecondDoseNoOutlet.isSelected){
            
            radiosecond = "No"
        }
        if(HepatitisSecondDoseYesOutlet.isSelected){
            
            radiosecond = "Yes"
            
        }
        
        if(hepatitisFirstdoseDate.isEnabled){
            
            firstdate = hepatitisFirstdoseDate.text!
        }
        else{
            
            firstdate = ""
        }
        
        if(hepatitisSeconddoseDate.isEnabled){
            
            seconddate = hepatitisSeconddoseDate.text!
        }
        else{
            
            seconddate = ""
        }
        
        
        hepatitisTable(radiofirstS: radiofirst, firstdateS: firstdate, radiosecondS: radiosecond, seconddateS: seconddate)
        
        
    }
    
    
    func getHepatitisSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select radiofirst,firstdate,radiosecond,seconddate from hpb", values: nil)
            while rs.next() {
                let radiofirst = rs.string(forColumn: "radiofirst")
                let firstdate = rs.string(forColumn: "firstdate")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let seconddate = rs.string(forColumn: "seconddate")
                
                
                print("gender hepa is \(radiofirst)")
                print("radiofirst hepa is \(firstdate)")
                print("radiosecond hepa is \(radiosecond)")
                
              
//                if(hepatitisFirstdoseDate.isEnabled){
//
//                    hepatitisFirstdoseDate.text = firstdate
//
//                }
//
//                if(hepatitisSeconddoseDate.isEnabled){
//
//                    hepatitisSeconddoseDate.text = seconddate
//
//                }
                
//                hepatitisFirstdoseDate.isEnabled = false
//                hepatitisFirstdoseDate.text = ""
//                hepatitisSeconddoseDate.text = ""
//                hepatitisSeconddoseDate.isEnabled = false
//                HepatitisSecondDoseYesOutlet.isEnabled = false
//                HepatitisSecondDoseYesOutlet.isSelected = false
//                HepatitisSecondDoseNoOutlet.isEnabled = false
//                HepatitisSecondDoseNoOutlet.isSelected = false
//                HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
//                HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
//
//                hpbsecondLabel.isEnabled = false
                
                
                if(radiofirst == "Yes"){
                    
                    HepatitisVaccinationYesOutlet.isSelected=true
                    
                    
                    
                    hepatitisFirstdoseDate.isEnabled = true
                    hepatitisFirstdoseDate.text = firstdate
                    
                    HepatitisSecondDoseYesOutlet.isEnabled = true
                    
                    HepatitisSecondDoseNoOutlet.isEnabled = true
                    
                    HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
                    HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
                    
                    hpbsecondLabel.isEnabled = true
                }
                if(radiofirst == "No"){
                    
                    HepatitisVaccinationNoOutlet.isSelected=true
                    
                    hepatitisSeconddoseDate.isEnabled = false
                    
                    
                    
                    
                    
                    hepatitisFirstdoseDate.isEnabled = false
                    hepatitisFirstdoseDate.text = ""
                    
                    HepatitisSecondDoseYesOutlet.isEnabled = false
                    
                    HepatitisSecondDoseNoOutlet.isEnabled = false
                    
                    HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
                    HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
                    
                    hpbsecondLabel.isEnabled = false
                    
                }
                if(radiofirst == "Partially"){
                    
                    HepatitisVaccinationPartiallyOutlet.isSelected=true
                    hepatitisSeconddoseDate.isEnabled = true
                    
                    
                    hepatitisFirstdoseDate.isEnabled = true
                    hepatitisFirstdoseDate.text = firstdate
                    
                    HepatitisSecondDoseYesOutlet.isEnabled = true
                    
                    HepatitisSecondDoseNoOutlet.isEnabled = true
                    
                    HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
                    HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
                    
                    hpbsecondLabel.isEnabled = true
                }
                
                
                if(radiosecond == "Yes"){
                    
                    HepatitisSecondDoseYesOutlet.isSelected=true
                    
                     hepatitisSeconddoseDate.isEnabled = true
                     hepatitisSeconddoseDate.text = seconddate
                    
                    
                }
                if(radiosecond == "No"){
                    
                    HepatitisSecondDoseNoOutlet.isSelected=true
                    hepatitisSeconddoseDate.isEnabled = false
                    hepatitisSeconddoseDate.text = ""
                    
                    
                }
                
//                if(radiosecond == "No"){
//
//                    HepatitisSecondDoseNoOutlet.isSelected = true
//
//                }
//                else if(radiosecond == "Yes"){
//
//                    HepatitisSecondDoseYesOutlet.isSelected = true
//                }
                
        
                
               
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    func getInfluenzaSavedData(){
        
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userdb.sqlite")
        
        let database = FMDatabase(url: fileURL)
        
        guard database.open() else {
            print("Unable to open database")
            return
        }
        
        do {
            
            
            let rs = try database.executeQuery("select * from influenza", values: nil)
            while rs.next() {
                let radiofirst = rs.string(forColumn: "gender")
                let firstdate = rs.string(forColumn: "radiofirst")
                let radiosecond = rs.string(forColumn: "radiosecond")
                let seconddate = rs.string(forColumn: "radiothird")
                
                
               print("gender is \(radiofirst)")
               print("radiofirst is \(firstdate)")
                
                
                
                
            }
        }
        catch {
            print("failed: \(error.localizedDescription)")
        }
        
        database.close()
        
        
    }
    
    
    
    
    
    //***************set outlets for radiobuttons********
    
    
    
    @IBOutlet weak var HepatitisVaccinationYesOutlet: DLRadioButton!
    
    @IBOutlet weak var HepatitisVaccinationPartiallyOutlet: DLRadioButton!
    
    
    @IBOutlet weak var HepatitisVaccinationNoOutlet: DLRadioButton!
    
    @IBOutlet weak var HepatitisSecondDoseYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var HepatitisSecondDoseNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaPregnantYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaPregnantNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaTrimesterFirstOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaTrimesterSecondOutlet: DLRadioButton!
    
    @IBOutlet weak var InfluenzaTrimesterThirdOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaVaccinatedYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var InfluenzaVaccinatedNoOutlet: DLRadioButton!
    
    @IBOutlet weak var VaricellaVaccinatedYesOutlet: DLRadioButton!
    
    @IBOutlet weak var VaricellaVaccinatedNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var VaricellaHistoryYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var VaricellaHistoryNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var TdapImmunisationYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var TdapImmunisationNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var TdapBoosterYesOutlet: DLRadioButton!
    
    @IBOutlet weak var TdapBoosterNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var MeaslesImmunisationYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var MeaslesImmunisationNoOutlet: DLRadioButton!
    
    
    @IBOutlet weak var MeningocoImmunisationYesOutlet: DLRadioButton!
    
    
    @IBOutlet weak var MeningocoImmunisationNoOutlet: DLRadioButton!
    
    
    
    @IBOutlet weak var hpbsecondLabel: UILabel!
    
    @IBOutlet weak var influenzafirstLabel: UILabel!
    
    @IBOutlet weak var influenzasecondLabel: UILabel!
    
    
    @IBOutlet weak var influenzathirdLabel: UILabel!
    
    
    @IBOutlet weak var tdapsecondLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myscrollview.delegate = self
        
        setDateOfHepatitisFirstDose()
        setDateOfHepatitisSecondDose()
        setDateOfTdap()
        setDateOfInfluenza()
        setDateOfTdapSecondDose()
        setDateOfMeaslesFirstDose()
        setDateOfMeaslesSecondDose()
        setDateOfMeningocoFirstDose()
        setDateOfMeningocoSecondDose()
        setDateOfVaricellaFirstDose()
        setDateOfVaricellaSecondDose()
        
       
        
//        hideHpbDetails()
        hideInfluenzaDetails()
        hideVaricellaDetails()
        hideTdapDetails()
        hideMeningocoDetails()
        hideMeasleDetails()
        
        self.title = "Immunisation Profile"
        
        
//        getHepatitisSavedData()
        
        
    

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        getInfluenzaSavedData()
        getHepatitisSavedData()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            
            scrollView.contentOffset.x = 0
            
        }
    }
    
   

}
