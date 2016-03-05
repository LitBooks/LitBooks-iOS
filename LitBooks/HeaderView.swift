//
//  HeaderView.swift
//  LitBooks
//
//  Created by all on 3/5/16.
//  Copyright © 2016 all. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        var components: [CGFloat] = [1.0, 0.0, 0.0, 1.0]
        var color = CGColorCreate(colorSpace, components)
        CGContextSetFillColorWithColor(context, color)
        CGContextMoveToPoint(context, 15, 50)
        CGContextAddCurveToPoint(context, 15, 100, 85, 100, 85, 50)
        CGContextAddCurveToPoint(context, 60, 75, 55, 45, 65, 40)
        CGContextAddCurveToPoint(context, 75, 35, 75, 15, 60, 15)
        CGContextAddCurveToPoint(context, 65, 45, 35, 45, 45, 20)
        CGContextAddCurveToPoint(context, 25, 20, 25, 40, 30, 45)
        CGContextAddCurveToPoint(context, 35, 50, 25, 55, 15, 50)
        CGContextFillPath(context)
        CGContextBeginPath(context)
        let rect = CGRect(x: 25, y: 60, width: 50, height: 25)
        CGContextAddEllipseInRect(context, rect)
        components = [1.0, 0.5, 0.0, 1.0]
        color = CGColorCreate(colorSpace, components)
        CGContextSetFillColorWithColor(context, color)
        CGContextFillPath(context)
    }

}
