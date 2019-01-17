//
//  HitButton.swift
//  BullseyeHit
//
//  Created by Admin on 17.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

@IBDesignable
class HitButton: UIButton {
    
    override func prepareForInterfaceBuilder() {
        customView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    
    func customView() {
        layer.borderWidth = 1
        layer.cornerRadius = 10
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 5, bottom: 8, right: 10)
        backgroundColor = #colorLiteral(red: 0.3214661593, green: 0.3214661593, blue: 0.3214661593, alpha: 1)
        tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        titleLabel?.font = titleLabel?.font.withSize(20)
    }
}
