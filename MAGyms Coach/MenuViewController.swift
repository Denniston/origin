//
//  MenuViewController.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 27/02/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var menuTableView: UITableView!

    
    var objectsArray = [Objects]()
    
    var menuImages = [menuImage]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        
        objectsArray = [Objects(sectionName: "Settings", sectionObjects: [("Business"),("Calculator")]), Objects(sectionName: "Groups", sectionObjects: [("Card_file"),("Company")]), Objects(sectionName: "Utilities", sectionObjects: [("Delivery"),("Home")])]
       
        // Do any additional setup after loading the view.
        menuTableView.register(UINib(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        //let menuList = [groups + utilities + settings]
        return objectsArray.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return objectsArray[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuTableViewCell
        cell.menuCellLabel.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        cell.menuCellImageView.image = menuImage[indexPath.row]
        
         return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
