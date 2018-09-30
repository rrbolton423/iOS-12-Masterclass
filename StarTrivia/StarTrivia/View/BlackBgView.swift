//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Romell Bolton on 9/30/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class BlackBgView: UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class BlackBgButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
