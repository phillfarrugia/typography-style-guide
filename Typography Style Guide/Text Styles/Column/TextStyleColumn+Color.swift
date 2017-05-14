//
//  TextStyleColumn+Color.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

extension TextStyleColumn {
    
    /// Color
    public var color: UIColor {
        switch self {
        case .c1:
            return UIColor("#4FC4B3")
        case .c2:
            return UIColor("#444444")
        case .c3:
            return UIColor("#979797")
        case .c4:
            return UIColor("#E45248")
        case .c5:
            return UIColor("#FFFFFF")
        }
    }
    
}
