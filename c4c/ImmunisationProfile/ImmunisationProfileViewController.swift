//
//  ImmunisationProfileViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

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
    

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            
            scrollView.contentOffset.x = 0
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
