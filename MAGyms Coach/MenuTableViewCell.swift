//
//  menuTableViewCell.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 26/02/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
   // @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var menuCellImageView: UIImageView!    
    @IBOutlet weak var menuCellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
