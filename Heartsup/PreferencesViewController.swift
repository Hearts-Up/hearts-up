//
//  PreferencesViewController.swift
//  Heartsup
//
//  Created by Elijah Smith on 12/10/16.
//  Copyright © 2016 HeartsUp. All rights reserved.
//

import UIKit
import MessageUI

class PreferencesViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var firstContactLabel: UILabel!
    @IBOutlet weak var secondContactLabel: UILabel!
    @IBOutlet weak var thirdContactLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var hrLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    
    var contactList = [UserDefaults.standard]
    
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
   
    @IBAction func textMessageGenerator(_ sender: Any) {
        let defaults = UserDefaults.standard
        if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = "Heart Attack Alert! I am having a heart attack, please send help! (This message was automatically generated by HeartsUp, an app designed to alert others in the event its user has a Heart Attack.)"
            controller.recipients = [defaults.string(forKey: "firstEmergencyContact")!, defaults.string(forKey: "secondEmergencyContact")!, defaults.string(forKey: "thirdEmergencyContact")!]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
            
        }
    }
   
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func quitAppPlease(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "firstTimeOpened")
        defaults.set("Male", forKey: "sex")
        defaults.set(true, forKey: "isMale")
        //defaults.set(<#T##url: URL?##URL?#>, forKey: <#T##String#>)
        print(defaults.bool(forKey: "firstTimeOpened"))
        print("Quitting App...")
        exit(0)
    }
    
}
