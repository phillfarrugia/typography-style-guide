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
    
    @IBOutlet weak var stepsLabel: R1C3Label!
    @IBOutlet weak var headerLabel: R3C1Label!
    
    @IBOutlet weak var firstNameView: UIView!
    @IBOutlet weak var lastNameView: UIView!
    @IBOutlet weak var addressLine1View: UIView!
    @IBOutlet weak var addressLine2View: UIView!
    @IBOutlet weak var cityView: UIView!
    @IBOutlet weak var stateView: UIView!
    @IBOutlet weak var zipCode: UIView!
    @IBOutlet weak var phoneNumberView: UIView!
    
    @IBOutlet weak var nextButton: R2C5Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KeyboardAvoiding.avoidingView = scrollView
    }

}

