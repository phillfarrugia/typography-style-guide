//
//  WhiteStyledNavigationController.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

/// A UINavigation Controller subclass that defines all of the internal styles to
/// present itself as white. Bar Button Items and Titles are displayed normally,
/// but the background color is white.
internal class WhiteStyledNavigationController: StyleableNavigationController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        navigationBar.barTintColor = .white
        navigationBar.shadowImage = UIImage()
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.isTranslucent = false
    }
    
}
