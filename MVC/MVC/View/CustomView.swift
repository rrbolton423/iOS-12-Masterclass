//
//  CustomView.swift
//  MVC
//
//  Created by Romell Bolton on 9/24/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override func awakeFromNib() {
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 5
        layer.cornerRadius = 15
        clipsToBounds = true
    }
}
