//
//  PreferencesViewController.swift
//  Heartsup
//
//  Created by James Randolph on 12/10/16.
//  Copyright © 2016 James Randolph. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController {

    @IBOutlet weak var firstContactLabel: UILabel!
    @IBOutlet weak var secondContactLabel: UILabel!
    @IBOutlet weak var thirdContactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loads phone number labels
        let defaults = UserDefaults.standard
        firstContactLabel.text = defaults.string(forKey: "firstEmergencyContact")
        secondContactLabel.text = defaults.string(forKey: "secondEmergencyContact")
        thirdContactLabel.text = defaults.string(forKey: "thirdEmergencyContact")
    }
    
    // Edit phone number buttons
    @IBAction func editFirstEmergencyContact(_ sender: Any) {
        let alert = UIAlertController(title: "Emergency Contact 1", message: "Enter new phone number.", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in
            UITextField.keyboardType = .numberPad
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in
            UserDefaults.standard.set(alert.textFields?[0].text, forKey: "firstEmergencyContact")
            self.viewDidLoad()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func editSecondEmergencyContact(_ sender: Any) {
        let alert = UIAlertController(title: "Emergency Contact 2", message: "Enter new phone number.", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in
            UITextField.keyboardType = .numberPad
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in
            UserDefaults.standard.set(alert.textFields?[0].text, forKey: "secondEmergencyContact")
            self.viewDidLoad()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func editThirdEmergencyContact(_ sender: Any) {
        let alert = UIAlertController(title: "Emergency Contact 3", message: "Enter new phone number.", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in
            UITextField.keyboardType = .numberPad
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in
            UserDefaults.standard.set(alert.textFields?[0].text, forKey: "thirdEmergencyContact")
            self.viewDidLoad()
        }))
        present(alert, animated: true, completion: nil)
    }
   
    
}
