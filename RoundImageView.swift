//
//  RoundImageView.swift
//  MAGyms Coach
//
//  Created by Denniston Sutherland on 22/02/2018.
//  Copyright © 2018 DennistonSutherland. All rights reserved.
//

import UIKit

@IBDesignable
class RoundImageView: UIImageView {
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = UIColor.blue.cgColor
        }
    }
    @IBInspectable var width: CGFloat = 0 {
        didSet {
          self.layer.frame.size.width = CGFloat()
        }
    }
    @IBInspectable var height: CGFloat = 0 {
        didSet {
            self.layer.frame.size.height = CGFloat()
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
}
