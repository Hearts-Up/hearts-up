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
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var hrLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loads phone number labels
        let defaults = UserDefaults.standard
        firstContactLabel.text = defaults.string(forKey: "firstEmergencyContact")
        secondContactLabel.text = defaults.string(forKey: "secondEmergencyContact")
        thirdContactLabel.text = defaults.string(forKey: "thirdEmergencyContact")
        heightLabel.text = defaults.string(forKey: "height")
        labelWeight.text = defaults.string(forKey: "weight")
        hrLabel.text = defaults.string(forKey: "restingHR")
        sexLabel.text = defaults.string(forKey: "sex")
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
    
    @IBAction func heightEdit(_ sender: Any) {
        let alert = UIAlertController(title: "Height", message: "Enter new height", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in UITextField.keyboardType = .numberPad})
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction((UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in UserDefaults.standard.set(alert.textFields?[0].text, forKey: "height"); self.viewDidLoad()})))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func weightEditor(_ sender: Any) {
        let alert = UIAlertController(title: "Weight", message: "Enter new weight", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in UITextField.keyboardType = .numberPad})
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction((UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in UserDefaults.standard.set(alert.textFields?[0].text, forKey: "weight"); self.viewDidLoad()})))
        present(alert, animated: true, completion: nil)
    }
    
    

    @IBAction func editHR(_ sender: Any) {
        let alert = UIAlertController(title: "Resting HR", message: "Enter new Resting HR", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (UITextField) -> Void in UITextField.keyboardType = .numberPad})
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction((UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) -> Void in UserDefaults.standard.set(alert.textFields?[0].text, forKey: "restingHR"); self.viewDidLoad()})))
        present(alert, animated: true, completion: nil)
    }
   
    
}
