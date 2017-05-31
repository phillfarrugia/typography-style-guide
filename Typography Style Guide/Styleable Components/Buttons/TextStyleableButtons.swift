//
//  TextStyleableButtons.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import UIKit

/// A UIButton subclass that conforms to the Styleable protocol
/// allowing any UIButton that subclasses this one to be an
/// IBDesignable.
@IBDesignable
internal class StyleableButton: UIButton, TextStyleable {
    
    @IBInspectable var styleRow: Int = 1 {
        didSet {
            applyStyle()
        }
    }

    @IBInspectable var styleColumn: Int = 1 {
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
extension TextStyleable where Self: UIButton {
    
    /// Applies the TextStyle to the label
    func applyStyle() {
        if let title = title(for: .normal) {
            let attributedTitle = NSAttributedString(string: title, attributes: textStyle.attributes)
            setAttributedTitle(attributedTitle, for: .normal)
        }
    }
    
}
