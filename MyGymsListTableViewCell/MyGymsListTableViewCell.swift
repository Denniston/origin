//
//  MyGymsListTableViewCell.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 22/02/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit

class MyGymsListTableViewCell: UITableViewCell {
    @IBOutlet weak var gymAvatar: UIImageView!
    
    @IBOutlet weak var gymName: UILabel!
    
    @IBOutlet weak var mAStyle: UILabel!
    
    @IBOutlet weak var gymActivation: UILabel!
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
