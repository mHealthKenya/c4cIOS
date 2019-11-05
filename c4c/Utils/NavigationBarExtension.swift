//
//  NavigationBarExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 05/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit


extension UINavigationBar {
    func customNavigationBar() {
        // color for button images, indicators and etc.
        self.tintColor = .blue
        
        // color for background of navigation bar
        // but if you use larget titles, then in viewDidLoad must write
        // navigationController?.view.backgroundColor = // your color
        self.barTintColor = .white
        self.isTranslucent = true
        
        // for larget titles
        self.prefersLargeTitles = false
        
//        // color for large title label
//        self.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: .white]
//
//        // color for standard title label
//        self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.someColor]
        
        // remove bottom line/shadow
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
    }
}
