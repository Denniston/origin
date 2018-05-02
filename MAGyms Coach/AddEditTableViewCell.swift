//
//  AddEditTableViewCell.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 25/04/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit


class AddEditTableViewCell: UITableViewCell, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let data = PickerData()
    let dataArray = [[00...23],[00...59],[00...23],[00...59]]
    
    
    
    func viewDidLoad() {
        timesPicker.dataSource = self
        timesPicker.delegate = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return dataArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray[component].count
    }
    
    
    @IBOutlet weak var timesPicker: UIPickerView!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func selectDaysButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func classDescriptionButtonPressed(_ sender: UIButton) {
        
    }
    
    
    
}
