//
//  ClassCellTableViewCell.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 22/04/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit

class ClassCellTableViewCell: UITableViewCell {
    @IBOutlet weak var startTime: UILabel!
    @IBOutlet weak var endTime: UILabel!
    @IBOutlet weak var dayOfTheWeek: UILabel!
    @IBOutlet weak var classDescription: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
