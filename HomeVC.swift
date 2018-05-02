//
//  HomeVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 16/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit
@IBDesignable

class HomeVC: UIViewController {
    @IBOutlet weak var masterButton: RoundButton!
    @IBOutlet weak var activateButton: RoundButton!
    @IBOutlet weak var gymsButton: RoundButton!
    
    
    func buttonShapes() {
        
    }
//    func roundSquareButtons(){
//        masterButton?.layer.frame.size.width = CGFloat(112)
//        masterButton?.layer.frame.size.height = CGFloat(112)
//        activateButton?.layer.frame.size.width = CGFloat(112)
//        activateButton?.layer.frame.size.height = CGFloat(112)
//        gymsButton?.layer.frame.size.width = CGFloat(112)
//        gymsButton?.layer.frame.size.height = CGFloat(112)
//    }
//     
    
    
    @IBAction func coachButton(_ sender: Any) {
    }
    @IBAction func codeButton(_ sender: Any) {
    }
    @IBAction func gymsButton(_ sender: Any) {
        
        performSegue(withIdentifier: "GymsMap", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    private func alertTheUser(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let  ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func logout(_ sender: Any) {
        if AuthProvider.Instance.logOut() {
            dismiss(animated: true, completion: nil)
            
        } else {
            // Problem with logging out
            alertTheUser(title: "Could not Logout", message: "We cannot loggout at the moment, please try again later.")
            
        }
    }
}
