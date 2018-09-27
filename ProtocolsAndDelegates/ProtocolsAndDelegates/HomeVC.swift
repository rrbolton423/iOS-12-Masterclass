//
//  ViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Romell Bolton on 9/27/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, LoginCompleteDelegate {
    
    @IBOutlet weak var usernameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }
    
    func userCreated(name: String) {
        usernameLbl.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LoginVC {
            destination.delegate = self
        }
    }

}

