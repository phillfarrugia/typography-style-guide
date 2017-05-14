//
//  TextStyle.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

public struct TextStyle {
    
    /// Row
    public let row: TextStyleRow
    
    /// Column
    public let column: TextStyleColumn
    
    /// Constructs a TextStyle from a given
    /// row and column.
    ///
    /// - Parameters:
    ///   - row: styleguide row to apply
    ///   - column: styleguide column to apply
    public init(row: TextStyleRow, column: TextStyleColumn) {
        self.row = row
        self.column = column
    }
    
}
