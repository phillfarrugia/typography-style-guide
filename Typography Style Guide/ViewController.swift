//
//  ViewController.swift
//  Typography Style Guide
//
//  Created by Phillip Farrugia on 5/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var stepsLabel: TextStyleableLabel!
    @IBOutlet weak var headerLabel: TextStyleableLabel!

    @IBOutlet weak var phoneNumberTextField: StateBasedAppearanceTextField!
    @IBOutlet weak var firstNameTextField: StateBasedAppearanceTextField!
    @IBOutlet weak var lastNameTextField: StateBasedAppearanceTextField!
    @IBOutlet weak var addressLine1TextField: StateBasedAppearanceTextField!
    @IBOutlet weak var cityTextField: StateBasedAppearanceTextField!
    @IBOutlet weak var zipCodeTextField: StateBasedAppearanceTextField!
    @IBOutlet weak var nextButton: StateBasedAppearanceButton!

    @IBOutlet weak var phoneNumberLabel: StateBasedAppearanceLabel!
    @IBOutlet weak var firstNameLabel: StateBasedAppearanceLabel!
    @IBOutlet weak var lastNameLabel: StateBasedAppearanceLabel!
    @IBOutlet weak var addressLine1Label: StateBasedAppearanceLabel!
    @IBOutlet weak var cityTextLabel: StateBasedAppearanceLabel!
    @IBOutlet weak var zipCodeLabel: StateBasedAppearanceLabel!

    var isPhoneNumberValid: Bool { return validate(text: phoneNumberTextField.text ?? "", checkingType: .phoneNumber) }
    var isAddressValid: Bool { return validate(text: addressLine1TextField.text ?? "", checkingType: .address) }
    var isFirstNameValid: Bool { return validateNotEmpty(text: firstNameTextField.text ?? "", allowNumerics: false) }
    var isLastNameValid: Bool { return validateNotEmpty(text: lastNameTextField.text ?? "", allowNumerics: false) }
    var isZipCodeValid: Bool { return validateNumeric(text: zipCodeTextField.text ?? "", withLength: 5) }
    var isCityValid: Bool { return validateNotEmpty(text: cityTextField.text ?? "", allowNumerics: false) }

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow,
                                               object: nil,
                                               queue: .main) { [weak self] (notification) in
                                                let val = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue
                                                self?.scrollView.contentInset.bottom = val?.cgRectValue.height ?? 0
        }

        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide,
                                               object: nil,
                                               queue: .main) { [weak self] (notification) in
                                                self?.scrollView.contentInset.bottom = 0
        }

        didUpdateInput()
    }

    @IBAction private func didUpdateInput() {
        phoneNumberTextField.stateEnabled = !isPhoneNumberValid
        phoneNumberLabel.stateEnabled = !isPhoneNumberValid
        addressLine1TextField.stateEnabled = !isAddressValid
        addressLine1Label.stateEnabled = !isAddressValid
        firstNameLabel.stateEnabled = !isFirstNameValid
        firstNameTextField.stateEnabled = !isFirstNameValid
        lastNameLabel.stateEnabled = !isLastNameValid
        lastNameTextField.stateEnabled = !isLastNameValid
        zipCodeLabel.stateEnabled = !isZipCodeValid
        zipCodeTextField.stateEnabled = !isZipCodeValid
        cityTextField.stateEnabled = !isCityValid
        cityTextLabel.stateEnabled = !isCityValid
        nextButton.isEnabled = isPhoneNumberValid && isAddressValid && isFirstNameValid
            && isLastNameValid && isZipCodeValid && isCityValid
    }

    private func validateNotEmpty(text: String, allowNumerics: Bool) -> Bool {
        return !text.isEmpty && (allowNumerics || text.characters.filter { "0123456789".contains("\($0)") }.isEmpty)
    }

    private func validateNumeric(text: String, withLength length: Int) -> Bool {
        return text.characters.count == length
            && text.characters.filter { "0123456789".contains("\($0)") }.count == length
    }

    private func validate(text: String, checkingType: NSTextCheckingResult.CheckingType) -> Bool {
        let inputRange = NSRange(location: 0, length: text.characters.count)
        let dataDetector = try? NSDataDetector(types: checkingType.rawValue)

        if let range = dataDetector?.rangeOfFirstMatch(in: text,
                                                       options: [],
                                                       range: inputRange) {
            return range.location == inputRange.location
                && range.length == inputRange.length
        } else {
            return false
        }
    }

    @IBAction private func dismissKeyboard() {
        view.endEditing(true)
    }

}

