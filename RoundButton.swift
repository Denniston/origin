//
//  RoundButton.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 19/02/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit
@IBDesignable

class RoundButton: UIButton {
    @IBInspectable var width: CGFloat = 0 {
        didSet {
            self.layer.frame.size.width = CGFloat(100)
        }
    }
    
    @IBInspectable var height: CGFloat = 0 {
        didSet {
            self.layer.frame.size.height = CGFloat(100)
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    
}

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


