//
//  TextStyleableTextFIeld.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

/// A UILabel subclass that conforms to the Styleable protocol
/// allowing any UILabel that subclasses this one to be an
/// IBDesignable.
@IBDesignable
internal class TextStyleableTextField: UITextField, TextStyleable {
    
    public var textStyle: TextStyle {
        return TextStyle(row: .r6, column: .c2)
    }
    
    override public var text: String? {
        didSet {
            applyStyle()
        }
    }
    
    /// Overrides the designated initializer in
    /// order to apply custom styles during initialization,
    /// for use as an IBDesignable.
    ///
    /// - Parameter frame: frame to initialize view within
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyStyle()
    }
    
    /// Overrides the storyboard/xib initializer in
    /// order to apply custom styles during initialization,
    /// for use as an IBDesignable.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyle()
    }
    
    /// Overrides the storyboard/xib initializer in
    /// order to apply custom styles during initialization,
    /// for use as an IBDesignable.
    override func prepareForInterfaceBuilder() {
        applyStyle()
    }
    
}

/// A default implementation of a TextStyleable UILabel element
/// which applies a font and text color.
extension TextStyleable where Self: UITextField {
    
    /// Applies the TextStyle to the label
    func applyStyle() {
        defaultTextAttributes = textStyle.attributes
    }
    
}
