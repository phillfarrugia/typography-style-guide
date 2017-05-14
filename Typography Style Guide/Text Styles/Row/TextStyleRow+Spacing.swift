//
//  TextStyleRow+Spacing.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

extension TextStyleRow {
    
    /// Line Spacing
    internal var lineSpacing: CGFloat {
        switch self {
        case .r1:
            return 0.0
        case .r2:
            return 0.0
        case .r3:
            return 32.0
        case .r4:
            return 0.0
        case .r5:
            return 0.0
        case .r6:
            return 0.0
        case .r7:
            return 24.0
        case .r8:
            return 0.0
        case .r9:
            return 17.0
        case .r10:
            return 0.0
        }
    }
    
    /// Letter Spacing
    internal var letterSpacing: Double {
        switch self {
        case .r1:
            return 0.4
        case .r2:
            return 2.0
        case .r3:
            return 0.3
        case .r4:
            return 0.2
        case .r5:
            return 0.3
        case .r6:
            return 0.0
        case .r7:
            return 0.2
        case .r8:
            return 0.4
        case .r9:
            return 0.4
        case .r10:
            return 0.8
        }
    }
    
}
