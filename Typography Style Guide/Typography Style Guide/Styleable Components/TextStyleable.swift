//
//  TextStyleable.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

/// A Styleable element that is dependent on a specific TextStyle.
public protocol TextStyleable {
    
    /// Text Styles to apply to the text inside this element.
    var textStyle: TextStyle { get }
}
