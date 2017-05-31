//
//  StateBasedAppearanceTextField.swift
//  Typography Style Guide
//
//  Created by Daniel Vancura on 5/29/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

class StateBasedAppearanceTextField: TextStyleableTextField {

    /// Indicates whether the state for the state-based appearance is active.
    var stateEnabled: Bool = false {
        didSet {
            applyStyle()
        }
    }

    @IBInspectable var stateBasedRow: Int = 1 {
        didSet {
            applyStyle()
        }
    }

    @IBInspectable var stateBasedColumn: Int = 1 {
        didSet {
            applyStyle()
        }
    }

    var stateBasedStyle: TextStyle {
        let row = TextStyleRow(rawValue: stateBasedRow) ?? .r1
        let column = TextStyleColumn(rawValue: stateBasedColumn) ?? .c1

        return TextStyle(row: row, column: column)
    }

    func applyStyle() {
        if !stateEnabled {
            super.applyStyle()
        } else {
            defaultTextAttributes = stateBasedStyle.attributes
        }
    }

}
