//
//  EnterContactsViewController.swift
//  Heartsup
//
//  Created by James Randolph on 12/11/16.
//  Copyright © 2016 James Randolph. All rights reserved.
//

import UIKit

class EnterContactsViewController: ViewController {
    
    @IBOutlet weak var firstContactField: UITextField!
    @IBOutlet weak var secondContactField: UITextField!
    @IBOutlet weak var thirdContactField: UITextField!
    
    var contactFields = [UITextField]()
    
    override func viewDidLoad() {
        contactFields = [firstContactField, secondContactField, thirdContactField]
        for contactField in contactFields {
            contactField.keyboardType = .numberPad
        }
    }
    
    @IBAction func okPressed(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(firstContactField.text, forKey: "firstEmergencyContact")
        defaults.set(secondContactField.text, forKey: "secondEmergencyContact")
        defaults.set(thirdContactField.text, forKey: "thirdEmergencyContact")
    }
}
