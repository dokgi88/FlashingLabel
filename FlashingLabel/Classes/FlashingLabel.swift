//
//  FlashingLabel.swift
//  FlashingLabel
//
//  Created by soom on 01/07/2019.
//

import UIKit

class FlashingLabel: UILabel {

    public var baseColor: UIColor?
    public var flashingColor: UIColor?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        configure()
    }

    public func startFlashing() {
        
    }
    
    public func stopFlashing() {
        
    }
    
    private func configure() {
        guard let baseColor = baseColor, let flashingColor = flashingColor else {return}
    }

}
