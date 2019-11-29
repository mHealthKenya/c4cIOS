//
//  NascopHivExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit

extension NascopHivViewController{
    
    
    func setFaqContent(){
        
        
        sectionNames = [ "Introduction", "Purpose of the course", "How to register"];
        sectionItems = [ ["The Ministry of Health (MOH), National AIDS and STI Control Programme (NASCOP) revised the HIV Monitoring & Evaluation tools in 2016 with support from Implementing Partners.NASCOP led the development and implementation of a five-day course to update and orient health care providers on the revised national HIV M&E tools.NASCOP in partnership with the University of California San Francisco (UCSF), with funding from CDC, converted the HIV M&E tools training course into eLearning format to facilitate reach to a wider audience. The online course is hosted at the University of Nairobi UHIV fellowship online learning portal in the link below"],
                         ["The purpose of the eLearning M&E tools training course is to provide the front- line Health Care Workers with the updates on the revised HIV M&E tools and to equip them with skills to correctly complete the tools and for appropriate reporting. This course is accredited by regulatory bodies and carries Continuous Professional Development (CPD) points."],
                         ["Fill in the registration form available on the link below to enroll for the online National HIV Programmes M&E tools training course."]
                        
        ];
    }
    
    
    
    
    
    
    
    func sizeHeaderToFit() {
        if let headerView = tableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
            
            let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = headerView.frame
            frame.size.height = height
            headerView.frame = frame
            
            tableView.tableHeaderView = headerView
        }
    }
    
    func sizeFooterToFit() {
        if let footerView = tableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()
            
            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame
            
            tableView.tableFooterView = footerView
        }
    }
    
    
}

