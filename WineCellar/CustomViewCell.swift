//
//  CustomViewCell.swift
//  WineCellar
//
//  Created by Martina Calluori on 2/4/18.
//  Copyright © 2018 Martina Calluori. All rights reserved.
//

import UIKit


class CustomViewCell: UITableViewCell {
    
    @IBOutlet weak var cusWine: UILabel!
    @IBOutlet weak var cusPrice: UILabel!
    @IBOutlet weak var cusIcon: UIImageView!
    @IBOutlet weak var cusKind: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

