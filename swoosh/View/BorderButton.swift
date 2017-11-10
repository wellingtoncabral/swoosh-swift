//
//  BoderButton.swift
//  swoosh
//
//  Created by Wellington Cabral da Silva on 07/11/17.
//  Copyright © 2017 Wellington Cabral da Silva. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
}
