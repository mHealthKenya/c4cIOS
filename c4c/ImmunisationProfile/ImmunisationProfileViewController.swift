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
        setInfluenzaTableData()
        setMeaslesTableData()
        setMeningocoTableData()
        setTdapTableData()
        setVaricellaTableData()
        
        
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
    
    
    
    func setInfluenzaTableData(){
        
        
        var radiofirst = ""
        var radiosecond = ""
        var radiothird = ""
        var firstdate = ""
        
        
        if(InfluenzaPregnantNoOutlet.isEnabled && InfluenzaPregnantNoOutlet.isSelected){
            
            radiofirst = "No"
            
        }
        
        if(InfluenzaPregnantYesOutlet.isEnabled && InfluenzaPregnantYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
        
        if(InfluenzaTrimesterFirstOutlet.isEnabled && InfluenzaTrimesterFirstOutlet.isSelected){
            
            radiosecond = "First"
            
        }
        
        
        if(InfluenzaTrimesterSecondOutlet.isEnabled && InfluenzaTrimesterSecondOutlet.isSelected){
            
            radiosecond = "Second"
            
        }
        
        
        if(InfluenzaTrimesterThirdOutlet.isEnabled && InfluenzaTrimesterThirdOutlet.isSelected){
            
            radiosecond = "Third"
            
        }
        
        
        if(InfluenzaVaccinatedNoOutlet.isEnabled && InfluenzaVaccinatedNoOutlet.isSelected){
            
            radiothird = "No"
            
        }
        
        if(InfluenzaVaccinatedYesOutlet.isEnabled && InfluenzaVaccinatedYesOutlet.isSelected){
            
            radiothird = "Yes"
            
        }
        
        
        
        if(influenzaDosedate.isEnabled){
            
            firstdate = influenzaDosedate.text!
        }
        else{
            
            firstdate = ""
        }
        
        
        
        influenzaTable(gender: "", radiofirstS: radiofirst, radiosecondS: radiosecond, radiothirdS: radiothird, doseDateS: firstdate)
        
        
    }
    
    
    
    func setVaricellaTableData(){
        
        
        var radiofirst = ""
        var radiosecond = ""
        var firstdate = ""
        var seconddate = ""
        
        
        if(VaricellaVaccinatedNoOutlet.isSelected){
            
            radiofirst = "No"
            
        }
        
        if(VaricellaVaccinatedYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
        
        if(VaricellaHistoryNoOutlet.isSelected){
            
            radiosecond = "No"
            
        }
        
        
        if(VaricellaHistoryYesOutlet.isSelected){
            
            radiosecond = "Yes"
            
        }
      
        
        
        
        if(varicellaFirstdoseDate.isEnabled){
            
            firstdate = varicellaFirstdoseDate.text!
        }
        else{
            
            firstdate = ""
        }
        
        if(varicellaSeconddoseDate.isEnabled){
            
            seconddate = varicellaSeconddoseDate.text!
        }
        else{
            
            seconddate = ""
        }
        
        
        
        varicellaTable(radiofirstS: radiofirst, radiosecondS: radiosecond, doseOneDateS: firstdate, doseTwoDateS: seconddate)
        
        
    }
    
    
    
    
    func setTdapTableData(){
        
        
        var radiofirst = ""
        var radiosecond = ""
        var firstdate = ""
        var seconddate = ""
        
        
        if(TdapImmunisationNoOutlet.isSelected){
            
            radiofirst = "No"
            
        }
        
        if(TdapImmunisationYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
        
        if(TdapBoosterNoOutlet.isSelected && TdapBoosterNoOutlet.isEnabled){
            
            radiosecond = "No"
            
        }
        
        if(TdapBoosterYesOutlet.isSelected && TdapBoosterYesOutlet.isEnabled){
            
            radiosecond = "Yes"
            
        }
        
        if(tdapFirstdoseDate.isEnabled){
            
            firstdate = tdapFirstdoseDate.text!
        }
        else{
            
            firstdate = ""
        }
        
        if(tdapBoosterdoseDate.isEnabled){
            
            seconddate = tdapBoosterdoseDate.text!
        }
        else{
            
            seconddate = ""
        }
        
        
       tdapTable(radiofirstS: radiofirst, firstDateS: firstdate, radiosecondS: radiosecond, secondDateS: seconddate)
        
        
    }
    
    
    
    
    func setMeaslesTableData(){
        
        
        var radiofirst = ""
        var firstdate = ""
        var seconddate = ""
        
        
        if(MeaslesImmunisationNoOutlet.isSelected){
            
            radiofirst = "No"
            
        }
        
        if(MeaslesImmunisationYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
      
        
        if(measlesFirstdoseDate.isEnabled){
            
            firstdate = measlesFirstdoseDate.text!
        }
        else{
            
            firstdate = ""
        }
        
        if(measlesSeconddoseDate.isEnabled){
            
            seconddate = measlesSeconddoseDate.text!
        }
        else{
            
            seconddate = ""
        }
        
        
        measlesTable(radiofirstS: radiofirst, dateoneS: firstdate, datetwoS: seconddate)
        
        
    }
    
    
    
    func setMeningocoTableData(){
        
        
        var radiofirst = ""
        var firstdate = ""
        var seconddate = ""
        
        
        if(MeningocoImmunisationNoOutlet.isSelected){
            
            radiofirst = "No"
            
        }
        
        if(MeningocoImmunisationYesOutlet.isSelected){
            
            radiofirst = "Yes"
            
        }
        
        
        if(meningocoFirstdoseDate.isEnabled){
            
            firstdate = meningocoFirstdoseDate.text!
        }
        else{
            
            firstdate = ""
        }
        
        if(meningocoSeconddoseDate.isEnabled){
            
            seconddate = meningocoSeconddoseDate.text!
        }
        else{
            
            seconddate = ""
        }
        
        
        meningocoTable(radiofirstS: radiofirst, dateoneS: firstdate, datetwoS: seconddate)
        
        
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
