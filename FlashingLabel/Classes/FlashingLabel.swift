//
//  FlashingLabel.swift
//  FlashingLabel
//
//  Created by soom on 01/07/2019.
//

import UIKit

public class FlashingLabel: UILabel {

    public var baseColor: UIColor?
    public var flashingColors: [UIColor]?
    public var flashingTime: TimeInterval?
    
    private var isDraw = false
    private var flashingCount = 0
    private var isFlashing = true
    private lazy var flashingTimer = Timer()

    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard !flashingTimer.isValid, isFlashing else {return}
        configure()
    }
    
    public func startFlashing() {
        isFlashing = true
        configure()
    }
    
    public func stopFlashing() {
        isFlashing = false
        flashingTimer.invalidate()
    }
    
    private func configure() {
        guard let baseColor = baseColor else {return}
        textColor = baseColor
        
        guard !flashingTimer.isValid, let flashingTime = flashingTime else {return}
        flashingTimer = Timer.scheduledTimer(timeInterval: flashingTime, target: self, selector: #selector(repeatFlashing), userInfo: nil, repeats: true)
    }
    
    @objc private func repeatFlashing() {
        guard let flashingColors = flashingColors, let text = text else {return}
        let colorsLastIndex = (flashingColors.count > Array(text).count) ? Array(text).count-1:flashingColors.count-1
        let sliceColors = flashingColors[0...colorsLastIndex].map{$0}
        
        let attribute = NSMutableAttributedString(string: text)
        for i in 0..<sliceColors.count {
            let increCount = flashingCount+i
            let count = (Array(text).count <= increCount) ? increCount-sliceColors.count:increCount
            let color = sliceColors[i]
            let range = NSMakeRange(count, 1)
            attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        }
        attributedText = attribute
        
        flashingCount += 1
        flashingCount = (Array(text).count == flashingCount) ? 0:flashingCount
    }

}
