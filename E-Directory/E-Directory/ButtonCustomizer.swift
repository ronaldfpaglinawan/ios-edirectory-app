//
//  ButtonCustomizer.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 9/6/15.
//  Copyright (c) 2015 Engr. Ronald F. Paglinawan. All rights reserved.
//

import UIKit

class ButtonCustomizer: NSObject {
    

    class func setRoundedButton(sender: AnyObject, withBorder radius: Float, borderWidth: Float, borderColor color: UIColor)
    {
        let layer: CALayer = sender.layer
        layer.masksToBounds = true
        layer.cornerRadius = CGFloat(radius)
        layer.borderWidth = CGFloat(borderWidth)
        layer.borderColor = color.CGColor
    }
   
}
