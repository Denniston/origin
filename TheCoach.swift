//
//  TheCoach.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 02/05/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import Foundation
import RealmSwift
import Firebase

class TheCoaches: Object {
    @objc dynamic var name = ""
    @objc dynamic var lastName = ""
    @objc dynamic var age = 16
    @objc dynamic var martialArtsName = ""
    @objc dynamic var gymName = ""
    @objc dynamic var experience = ""
    
}
