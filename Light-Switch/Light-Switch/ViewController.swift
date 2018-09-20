//
//  ViewController.swift
//  Light-Switch
//
//  Created by Romell Bolton on 9/19/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isOn = true

    @IBOutlet weak var lightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        if isOn == true {
            view.backgroundColor = .white
            lightLabel.text = "Lights On"
            lightLabel.textColor = .black
            isOn = false
        } else {
            view.backgroundColor = .black
            lightLabel.text = "Lights Off"
            lightLabel.textColor = .white
            isOn = true
        }
    }
    
}

