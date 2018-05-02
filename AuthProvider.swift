//
//  AuthProvider.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 31/05/2017.
//  Copyright © 2017 DennistonSutherland. All rights reserved.
//

import Foundation
import FirebaseAuth

typealias LoginHandler = (_ msg: String?) -> Void



class AuthProvider {
    private static let _instance = AuthProvider()
    
    static var Instance: AuthProvider {
        return _instance
    }
    
//    func login(withEmail: String, password: String, loginHandler: Loginhandler?) {
//    
//        FIRAuth.auth()?.signIn(withEmail: withEmail, password: password, completion: {(user, error) in
//        })
//        
//    }//login func
    
    
    func logOut() -> Bool {
        
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                return true
            } catch {
                return false
            }
        }
        
        return true
        
        
        
    }
    
    
}//class
