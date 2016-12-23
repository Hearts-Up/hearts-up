//
//  EnterBodyInfoViewController.swift
//  Heartsup
//
//  Created by Elijah Smith on 12/16/16.
//  Copyright © 2016 HeartsUp. All rights reserved.
//

import UIKit

class EnterBodyInfoViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var bpmField: UITextField!
    
    
    var textFields = [UITextField]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFields = [heightField, weightField, bpmField]
        for textField in textFields {
            textField.keyboardType = .numberPad
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonNext(_ sender: Any) {
        let defaults = UserDefaults.standard
        print("hi")
        defaults.set(heightField.text, forKey: "height")
        print(defaults.string(forKey: "height")!)
        defaults.set(weightField.text, forKey: "weight")
        print(defaults.string(forKey: "weight")!)
        defaults.set(bpmField.text, forKey: "restingHR")
        print(defaults.string(forKey: "restingHR")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
