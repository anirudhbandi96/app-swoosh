//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Anirudh Bandi on 1/5/18.
//  Copyright © 2018 Anirudh Bandi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
        
    }

}
