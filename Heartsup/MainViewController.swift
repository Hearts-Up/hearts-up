//
//  ViewController.swift
//  Heartsup
//
//  Created by Elijah Smith on 12/2/16.
//  Copyright © 2016 HeartsUp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    let heartURL = URL(string: "http://www.heart.org/HEARTORG/Conditions/HeartAttack/Heart-Attack_UCM_001092_SubHomePage.jsp")
    
    @IBAction func infoButton(_ sender: Any) {
        UIApplication.shared.open(heartURL!, options: [:], completionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // test comment
        
        
        
    }
    
    
}

