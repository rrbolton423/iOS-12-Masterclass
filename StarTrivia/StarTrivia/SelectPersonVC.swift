//
//  ViewController.swift
//  StarTrivia
//
//  Created by Romell Bolton on 9/30/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    var personApi = PersonApi()
    override func viewDidLoad() {
        super.viewDidLoad()
        //step 1: make networking request
        personApi.getRandomPersonUrlSession()
        // 
    }
    
}
