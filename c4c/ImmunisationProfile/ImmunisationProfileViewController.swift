//
//  ImmunisationProfileViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class ImmunisationProfileViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var myscrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myscrollview.delegate = self

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
