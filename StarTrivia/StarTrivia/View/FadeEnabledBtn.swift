//
//  FadeEnabledBtn.swift
//  StarTrivia
//
//  Created by Romell Bolton on 10/7/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class FadeEnabledBtn: UIButton {
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                }
            }
        }
    }
}
