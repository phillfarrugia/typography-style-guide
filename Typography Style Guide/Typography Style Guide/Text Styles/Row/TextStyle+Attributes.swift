//
//  TextStyleRow+Attributes.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

/// A dictionary containing attributes to be applied to an NSAttributedString.
public typealias TextAttributes = [String: AnyObject]

extension TextStyle {
    
    // MARK: - Functions
    
    /// Creates an NSParagraphStyle with the given line spacing.
    ///
    /// - Parameter lineSpacing: space between each line of text
    /// - Returns: a paragraph style with the specified line sapcing
    internal static func paragraphStyle(_ lineSpacing: CGFloat = 0) -> NSParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineSpacing
        return paragraphStyle
    }
    
    /// Constructs a TextAttributes dictionary with a given font,
    /// letter spacing and line spacing.
    ///
    /// - Parameters:
    ///   - font: font to add to attributes
    ///   - letterSpacing: letter spacing to add to attributes
    ///   - lineSpacing: line spacing to add to attributes
    /// - Returns: attributed string dictionary
    internal var attributes: TextAttributes {
        return [
            NSFontAttributeName: row.font,
            NSKernAttributeName: NSNumber(value: row.letterSpacing),
            NSForegroundColorAttributeName: column.color
        ]
    }
    
    /// Constructs a TextAttributes dictionary with a given font,
    /// letter spacing and line spacing.
    ///
    /// - Parameters:
    ///   - font: font to add to attributes
    ///   - letterSpacing: letter spacing to add to attributes
    ///   - lineSpacing: line spacing to add to attributes
    /// - Returns: attributed string dictionary
    internal var multilineAttributes: TextAttributes {
        return [
            NSFontAttributeName: row.font,
            NSKernAttributeName: NSNumber(value: row.letterSpacing),
            NSParagraphStyleAttributeName: TextStyle.paragraphStyle(row.lineSpacing),
            NSForegroundColorAttributeName: column.color
        ]
    }
    
}
