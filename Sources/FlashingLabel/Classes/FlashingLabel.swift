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
    public var isInfinite: Bool = false
    
    private var isDraw = false
    private var flashingCount = 0
    private var isFlashing = true
    private var textCount: Int {
        guard let text = text else {return 0}
        return Array(text).count
    }
    
    private lazy var infiniteColors = [UIColor]()
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
        
        guard !flashingTimer.isValid, let flashingTime = flashingTime, let flashingColors = flashingColors, textCount > 0 else {return}
        
        var tempColors = [UIColor]()
        
        defer {
            flashingTimer = Timer.scheduledTimer(timeInterval: flashingTime, target: self, selector: #selector(repeatFlashing(_:)), userInfo: tempColors, repeats: true)
        }
        
        guard isInfinite, textCount > flashingColors.count else {
            let colorsLastIndex = (flashingColors.count > textCount) ? textCount-1:flashingColors.count-1
            tempColors = flashingColors[0...colorsLastIndex].map{$0}
            return
        }
        
        var colorCount = 0
        while tempColors.count < textCount {
            tempColors.append(flashingColors[colorCount])
            colorCount = (colorCount+1) == flashingColors.count ? 0:colorCount+1
        }
    }
    
    @objc private func repeatFlashing(_ timer: Timer) {
        guard let colors = timer.userInfo as? [UIColor], let text = text else {return}
        
        let attribute = NSMutableAttributedString(string: text)
        for i in 0..<colors.count {
            let increCount = flashingCount+i
            let count = (textCount <= increCount) ? increCount-textCount:increCount
            let color = colors[i]
            let range = NSMakeRange(count, 1)
            attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        }
        attributedText = attribute
        
        flashingCount += 1
        flashingCount = (textCount == flashingCount) ? 0:flashingCount
    }

}
