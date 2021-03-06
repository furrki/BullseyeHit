//
//  BullSlider.swift
//  BullseyeHit
//
//  Created by Admin on 17.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

@IBDesignable
open class BullSlider: UISlider {
    @IBInspectable open var trackWidth:CGFloat = 2 {
        didSet {setNeedsDisplay()}
    }
    
    override open func trackRect(forBounds bounds: CGRect) -> CGRect {
        let defaultBounds = super.trackRect(forBounds: bounds)
        return CGRect(
            x: defaultBounds.origin.x,
            y: defaultBounds.origin.y + defaultBounds.size.height/2 - trackWidth/2,
            width: defaultBounds.size.width,
            height: trackWidth
        )
    }
    
    override open func prepareForInterfaceBuilder() {
        customView()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    
    func customView() {
        let leftColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        let rightColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        minimumTrackTintColor = leftColor
        maximumTrackTintColor = rightColor
        
        self.setThumbImage(#imageLiteral(resourceName: "star"), for: .normal)
        self.setThumbImage(#imageLiteral(resourceName: "start_blue"), for: .highlighted)
        
    }

}
