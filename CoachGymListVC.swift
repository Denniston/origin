//
//  CoachGymListVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 18/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit
import MapKit


class CoachGymListVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UITableViewDelegate,UITableViewDataSource {
    //var myGymsArray: [AddGyms] = [AddGyms]()
    var myGymsArray = ["Hello", "You", "Rascal"]
    
    
    
    @IBOutlet weak var myGymsListTableView: UITableView!
    @IBOutlet weak var gymLocation: MKMapView!
    

    @IBAction func deleteGym(_ sender: Any) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myGymsListTableView.delegate = self
        myGymsListTableView.dataSource = self
        
        
        //Register Nib
        myGymsListTableView.register(UINib(nibName: "MyGymsListTableViewCell", bundle: nil), forCellReuseIdentifier: "customGymsListCell")
        configureTableView()
    }
    
    // The required functions for any TableView****************************************
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int
    {
        return myGymsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customGymsListCell", for: indexPath) as! MyGymsListTableViewCell
//        cell.gymName.text = myGymsArray[indexPath.row].gymName
//        cell.mAStyle.text = myGymsArray[indexPath.row].martialArtsStyle
//        cell.gymActivation.text = myGymsArray[indexPath.row].activationCode
//        cell.gymAvatar.image = UIImage(named: "Sneakers")
        cell.gymName.text = myGymsArray[indexPath.row]
        return cell
        
    }
    
    //******************************************************************************
    func configureTableView() {
        myGymsListTableView.rowHeight = UITableViewAutomaticDimension
        myGymsListTableView.estimatedRowHeight = 87.0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createGym() {
        var newGym = AddGyms()
        
    }
    
    

}
