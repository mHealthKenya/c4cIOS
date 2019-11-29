//
//  NSAttributedStringExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation

extension NSAttributedString{
    
    static func makeHyperlink(for path:String,in string:String,as substring:String)->NSAttributedString{
        
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        
        return attributedString
        
    }
}
