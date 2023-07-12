//
//  ViewController.swift
//  HW 2.06_2
//
//  Created by Рамиль Хамидуллин on 07.07.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }
    
//    @IBAction func cancelLogOut() {
//        dismiss(animated: true)
//
//    }
    
}
