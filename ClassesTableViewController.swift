//
//  ClassesVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 16/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit
import Firebase
import RealmSwift


class ClassesTableViewController: UITableViewController {
    @IBOutlet weak var editDoneButton: UIBarButtonItem!    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    let realm = try! Realm()
    var classes:  Results<TheClass>?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib ( nibName: "ClassCellTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomClassCell")
        }
    
    
    
    //MARK: - DataSource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomClassCell", for: indexPath) as! ClassCellTableViewCell
        
        if let aClass = classes?[indexPath.row] {
            cell.startTime?.text = aClass.startTime
            cell.endTime?.text = aClass.endTime
            cell.dayOfTheWeek?.text = aClass.dayOfTheWeek
            cell.classDescription?.text = aClass.classDescription
            
            
            cell.accessoryType = .detailDisclosureButton
            //cell.accessoryType = item.done ? .checkmark: .none
            
        } else {
            cell.textLabel?.text = "No Classes Added."
        }
   
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let rowView = UILabel()
//        let hue = CGFloat(row) / CGFloat(hoursMinutes.count)
//        rowView.backgroundColor = UIColor(hue: hue, saturation: 1, brightness:1, alpha: 1)
//        rowView.backgroundColor = UIColor(hue: hue, saturation: 1, brightness:1, alpha: 1)
//        let attrStr = NSAttributedString(string: hoursMinutes[row], attributes: [NSAttachmentAttributeName: UIFont(name: "Georgia", size: 24)!, NSForegroundColorAttributeName: UIColor.blue])
//        rowView.attributedText = attrStr
//        rowView.textAlignment = .center
//        return rowView
//    }

    
    
    @IBAction func editDoneButtonPressed(_ sender: UIBarButtonItem) {
        //self.tableView.isEditing = true
        self.tableView.allowsSelection = true
        self.tableView.setEditing(true, animated: true)
       // self.tableView.selectRow(at: IndexPath, animated: true, scrollPosition: .detailDisclosureButton)
    }
    

    
//    func editDoneButtonPressed() {
//        editDoneButton.action
//    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}




//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
   
