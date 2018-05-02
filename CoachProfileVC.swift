//
//  CoachProfileVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 21/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit

class CoachProfileVC: UIViewController {
    @IBOutlet weak var profileCoverPhoto: UIImageView!
    
    @IBOutlet weak var profilePicture: RoundImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var yearsTraining: UILabel!
    
    @IBOutlet weak var birthday: UILabel!
    
    @IBOutlet weak var numberOfFights: UILabel!
    
    
    @IBAction func editProfilePicture(_ sender: UIButton) {
    }
    
    @IBAction func editProfileCoverPhoto(_ sender: UIButton) {
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

}
