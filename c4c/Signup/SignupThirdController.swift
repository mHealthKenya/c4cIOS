//
//  SignupThirdController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 14/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class SignupThirdController: UIViewController {

    @IBAction func SignupBtn(_ sender: UIButton) {
        
        print("signing up")
        performSegue(withIdentifier: "gotolandingsegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
