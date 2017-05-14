//
//  UIColor+Hex.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// An extension on UIColor which adds multiple
/// convenience initializers in order to allow
/// the creation of colours from HEX Strings.
public extension UIColor {
    
    /// A convenience initializer to create a UIColor out of a hex value
    /// represented as UInt32.
    ///
    /// - Parameter hex: Hex value
    private convenience init(hex: UInt32) {
        let r = (hex & 0xFF0000) >> 16
        let g = (hex & 0x00FF00) >> 8
        let b = hex & 0x0000FF
        
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1.0))
    }
    
    /// A convenience initializer to create a UIColor out of a string
    /// representing a hex color value.
    ///
    /// - Parameter hexString: Hex string
    convenience init(_ hexString: String) {
        var string = hexString.trimmingCharacters(in: NSCharacterSet.whitespaces).uppercased()
        //Remove # from the string
        if string.hasPrefix("#") {
            string = string.substring(from: string.characters.index(string.startIndex, offsetBy: 1))
        }
        
        //Check if the string has exactly 6 characters.. if less or more, return white color
        if string.characters.count != 6 {
            self.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            let scanner = Scanner(string: string)
            var hexValue = UInt32(0)
            scanner.scanHexInt32(&hexValue)
            
            self.init(hex: hexValue)
        }
    }
    
}
