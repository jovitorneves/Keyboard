//
//  KeyboardHelpers.swift
//  KeyboardKit
//
//  Created by Vitor Neves on 07/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import UIKit

public extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }
    
    class func randomColor() -> UIColor {
        let red = (CGFloat)(arc4random() % 255) / 255.0
        let green = (CGFloat)(arc4random() % 255) / 256.0
        let blue = (CGFloat)(arc4random() % 255) / 256.0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return color
    }
}
