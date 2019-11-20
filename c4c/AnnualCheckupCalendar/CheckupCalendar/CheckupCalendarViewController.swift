//
//  CheckupCalendarViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 12/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class CheckupCalendarViewController: UIViewController {
    
    let dateOfCheckupPicker = UIDatePicker()
    
    
    
    @IBAction func saveCheckup(_ sender: Any) {
        
    }
    @IBOutlet weak var dateofcheckup: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Checkup Calendar"
        setDateOfCheckup()
        

        // Do any additional setup after loading the view.
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
