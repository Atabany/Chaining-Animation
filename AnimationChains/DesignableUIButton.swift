//
//  AppDelegate.swift
//
//  Created by Mona Ali on 2/12/18.
//  Copyright © 2018 Mona Ali. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class DesignableUIButton: UIButton {
    @IBInspectable var cornerRadious: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadious
            layer.masksToBounds = cornerRadious > 0
        }
    }
    @IBInspectable var borderwidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderwidth
        }
    }
    @IBInspectable var bordercolor: UIColor? {
        didSet {
            layer.borderColor = bordercolor?.cgColor
        }
    }
    @IBInspectable var bgcolor: UIColor?{
        didSet {
            backgroundColor = bgcolor
        }
    }
    
}

