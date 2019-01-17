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
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        customView()
    }
    override open func prepareForInterfaceBuilder() {
        customView()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    
    func customView() {
        /*let leftImage = #imageLiteral(resourceName: "blueCircle")
        let rightImage = #imageLiteral(resourceName: "greenCircle")
        let leftTrackable = leftImage.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15))
        let rightTrackable = rightImage.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15))
        
        setMinimumTrackImage(leftTrackable, for: .normal)
        setMaximumTrackImage(rightTrackable, for: .normal)*/
        let leftColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        let rightColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        self.minimumTrackTintColor = leftColor
        self.maximumTrackTintColor = rightColor
        
    }

}
