//
//  CheckupCalendarViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 12/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class CheckupCalendarViewController: UIViewController,UIScrollViewDelegate {
    
    let dateOfCheckupPicker = UIDatePicker()
    
    
    @IBOutlet weak var myscrollview: UIScrollView!
    
    @IBAction func saveCheckup(_ sender: Any) {
        
    }
    @IBOutlet weak var dateofcheckup: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Checkup Calendar"
        setDateOfCheckup()
        myscrollview.delegate = self
        

        // Do any additional setup after loading the view.
    }
    

   
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            
            scrollView.contentOffset.x = 0
            
        }
    }

}
