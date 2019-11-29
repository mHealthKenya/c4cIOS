//
//  NascopHivTableViewCell.swift
//  c4c
//
//  Created by MHEALTH KENYA on 29/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class NascopHivTableViewCell: UITableViewCell {

    @IBOutlet weak var labelContent: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
