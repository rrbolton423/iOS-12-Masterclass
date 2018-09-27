//
//  LoginVC.swift
//  ProtocolsAndDelegates
//
//  Created by Romell Bolton on 9/27/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameEntryText: UITextField!
    var delegate: LoginCompleteDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }

    @IBAction func doneClicked(_ sender: Any) {
        delegate?.userCreated(name: userNameEntryText.text ?? "No name")
        dismiss(animated: true, completion: nil)
    }
}
