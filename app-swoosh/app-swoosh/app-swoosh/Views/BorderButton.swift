//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Michael Roloff on 3/30/19.
//  Copyright © 2019 Michael Roloff. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
