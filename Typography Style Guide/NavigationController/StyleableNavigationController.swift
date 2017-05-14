//
//  StyleableNavigationController.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

/// A UINavigationController subclass that sets the preffered status bar
/// style based on the preference of the top most view controller.
internal class StyleableNavigationController: UINavigationController {
    
    /// Overrides the inherited status bar style and returns the status bar style
    /// defined in the top most view controller. If no preference is defined, the
    /// default style (black) is returned.
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if let topViewController = viewControllers.first {
            return topViewController.preferredStatusBarStyle
        }
        return .default
    }
    
}
