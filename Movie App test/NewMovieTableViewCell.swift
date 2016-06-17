//
//  NewMovieTableViewCell.swift
//  Movie App test
//
//  Created by Kyle on 2016/6/17.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class NewMovieTableViewCell: UITableViewCell {

  
     
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
