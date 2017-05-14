//
//  TextStyleRow+Font.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

extension TextStyleRow {
    
    /// Font
    internal var font: UIFont {
        switch self {
        case .r1:
            return UIFont(name: "FuturaStd-Medium", size: 12.0)!
        case .r2:
            return UIFont(name: "FuturaStd-Book", size: 15.0)!
        case .r3:
            return UIFont(name: "FreightTextProBold-Italic", size: 28.0)!
        case .r4:
            return UIFont(name: "Gotham-Medium", size: 10.0)!
        case .r5:
            return UIFont(name: "Gotham-Book", size: 10.0)!
        case .r6:
            return UIFont(name: "Gotham-Book", size: 16.0)!
        case .r7:
            return UIFont(name: "FreightTextProLight-Regular", size: 20.0)!
        case .r8:
            return UIFont(name: "FuturaStd-Medium", size: 11.0)!
        case .r9:
            return UIFont(name: "Gotham-Medium", size: 12.0)!
        case .r10:
            return UIFont(name: "FuturaStd-Bold", size: 14.0)!
        }
    }
    
}
