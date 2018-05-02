//
//  TheClass.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 23/04/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import Foundation
import Firebase
import RealmSwift

class TheClass: Object {
    @objc dynamic var startTime = ""
    @objc dynamic var endTime = ""
    @objc dynamic var dayOfTheWeek = ""
    @objc dynamic var classDescription = ""
}
