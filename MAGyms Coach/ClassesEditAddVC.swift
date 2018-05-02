//
//  ClassesEditAddVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 19/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit
//
//class ClassesEditAddVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
//    
//{
//
//    @IBOutlet weak var startPicker: UIPickerView!
//    @IBOutlet weak var classDescription: UITextField!
//    @IBOutlet weak var endPicker: UIPickerView!
//    @IBOutlet weak var startLabel: UILabel!
//    @IBOutlet weak var endLabel: UILabel!
//    
//    @IBAction func save(_ sender: UIButton) {
//        
//    }
//    
//
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//      
//    }
//    func createClassesPicker() {
//        let pickerToLabel = UIPickerView()
//        pickerToLabel.delegate = self
//    }
//    
//    
//    var picker1Options = [
//        ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],
//        ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
//        ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"]
//    ]
//    var picker2Options = [
//        ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],
//        ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
//        ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"]
//    ]
//    
//    // 1
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        if (pickerView.tag == 1)  {
//            return picker1Options.count
//        }else{
//            return picker2Options.count
//        }
//    }
//    // 2
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if (pickerView.tag == 1){
//            return picker1Options[component].count
//        }else{
//            return picker2Options[component].count
//        }   }
//    // 3
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
//        if (pickerView.tag == 1){
//            return picker1Options[component][row]}else{
//            return picker2Options[component][row]
//        }
//
//    }
//    // 4
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//    {
//        
//        startLabel.text = startPicker.description
//        endLabel.text = endPicker.description
//    }
//    
//    
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//   
//    
//}


//func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//    let rowView = UILabel()
//    let hue = CGFloat(row) / CGFloat(hoursMinutes.count)
//    rowView.backgroundColor = UIColor(hue: hue, saturation: 1, brightness:1, alpha: 1)
//    rowView.backgroundColor = UIColor(hue: hue, saturation: 1, brightness:1, alpha: 1)
//    let attrStr = NSAttributedString(string: hoursMinutes[row], attributes: [NSAttachmentAttributeName: UIFont(name: "Georgia", size: 24)!, NSForegroundColorAttributeName: UIColor.blue])
//    rowView.attributedText = attrStr
//    rowView.textAlignment = .center
//    return rowView
//}









