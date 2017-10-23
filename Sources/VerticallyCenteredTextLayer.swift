//
//  VerticallyCenteredTextLayer.swift
//  Pods-rangeSlider
//
//  Created by Fomin Nickolai on 23/10/2017.
//

import UIKit

open class VerticallyCenteredTextLayer: CATextLayer {
    override open func draw(in ctx: CGContext) {
        let fontSize = self.fontSize
        let height = self.bounds.size.height
        let deltaY = (height-fontSize)/2 - fontSize/10
        
        ctx.saveGState()
        ctx.translateBy(x: 0.0, y: deltaY)
        super.draw(in: ctx)
        ctx.restoreGState()
        
    }
}
