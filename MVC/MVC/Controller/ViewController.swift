//
//  ViewController.swift
//  MVC
//
//  Created by Romell Bolton on 9/24/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var detailDescLabel: UILabel!
    
    let movie = Movie(title: incrediblesTitle, description: incrediblesDescription, detailedDescription: incrediblesDetailedDescription)
    
    @IBAction func updateBtnWasPressed(_ sender: Any) {
        titleLabel.text = movie.title
        descLabel.text = movie.description
        detailDescLabel.text = movie.detailedDescription
    }
}

