//
//  SigninVC.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 06/06/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class SigninVC: UIViewController {
    
    private let COACH_SEGUE = "UITabBarController"
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logInButton(_ sender: AnyObject) {
        guard let email = emailTextField.text, let password = passwordTextField.text  else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error{
                print(error.localizedDescription)
            }else if let user = Auth.auth().currentUser {
                self.performSegue(withIdentifier: self.COACH_SEGUE, sender: nil)
                
            }
        }

        
    }
    
    @IBAction func signUpButton(_ sender: AnyObject) {
        guard let email = emailTextField.text, !email.isEmpty else { print("Email is empty"); return }
        guard let password = passwordTextField.text, !password.isEmpty else { print("Password is empty"); return }
        
        let ref = Database.database().reference().root
        
        if email != "" && password != "" {
            Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
                if error == nil{
                    ref.child("users").child((user?.uid)!).setValue(email)
                     self.performSegue(withIdentifier: self.COACH_SEGUE, sender: nil)
                    
                }else {
                    if error != nil {
                        print(error!)
                    }
                }
                
            })
            
        }
        
    }
}

//var action = UIAlertAction(title: "", style: .default) {
//    (parameter: UIAlertAction) in
//    
//}

























