//
//  SexSelectViewController.swift
//  Heartsup
//
//  Created by Elijah Smith on 12/16/16.
//  Copyright © 2016 HeartsUp. All rights reserved.
//

import UIKit

class SexSelectViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    @IBAction func segSex(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            defaults.set(true, forKey: "isMale")
            defaults.set("Male", forKey: "sex")
        }
        else {
            defaults.set(false, forKey: "isMale")
            defaults.set("Female", forKey: "sex")
        }
    }
    
    @IBAction func setupDoneButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "firstTimeOpened")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
