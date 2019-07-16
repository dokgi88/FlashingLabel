//
//  ViewController.swift
//  FlashingLabel
//
//  Created by dokgi1988 on 07/01/2019.
//  Copyright (c) 2019 dokgi1988. All rights reserved.
//

import UIKit
import FlashingLabel

class ViewController: UIViewController {

    private let whiteView: FlashingContainerView = {
        let view = FlashingContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(whiteView)

        whiteView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class FlashingContainerView: UIView {
    
    private let flashLabelFirst: FlashingLabel = {
        let label = FlashingLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.baseColor = .orange(0.5)
        label.flashingColors = [.orange()]
        label.flashingTime = 0.17
        label.text = "HELLO"
        label.font = .boldSystemFont(ofSize: 20)
        label.startFlashing()
        return label
    }()
    private let flashLabelSecond: FlashingLabel = {
        let label = FlashingLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.baseColor = .orange()
        label.flashingColors = [.orange(0.5)]
        label.flashingTime = 0.17
        label.text = "HELLO"
        label.font = .boldSystemFont(ofSize: 20)
        label.startFlashing()
        return label
    }()
    private let flashLabelThird: FlashingLabel = {
        let label = FlashingLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.baseColor = .pantone_serenity()
        label.flashingColors = [.pantone_serenity(0.5)]
        label.flashingTime = 0.17
        label.text = "HELLO"
        label.font = .boldSystemFont(ofSize: 20)
        label.startFlashing()
        return label
    }()
    private let flashLabelFourth: FlashingLabel = {
        let label = FlashingLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.baseColor = .pantone_serenity(0.5)
        label.flashingColors = [.pantone_serenity()]
        label.flashingTime = 0.17
        label.text = "HELLO"
        label.font = .boldSystemFont(ofSize: 20)
        label.startFlashing()
        return label
    }()
    private let flashLabelMultiple: FlashingLabel = {
        let label = FlashingLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.baseColor = UIColor.black.withAlphaComponent(0.1)
        label.flashingColors = [.pantone_roseQuartz(), .pantone_serenity(), .pantone_greenery(), .pantone_ultraViolet(), .pantone_livingCoral(), .pantone_roseQuartz()]
        label.flashingTime = 0.17
        label.text = "HELLO FLASHING LABEL"
        label.font = .boldSystemFont(ofSize: 20)
        label.startFlashing()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(flashLabelFirst)
        addSubview(flashLabelSecond)
        addSubview(flashLabelMultiple)
        addSubview(flashLabelThird)
        addSubview(flashLabelFourth)
        layout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func layout() {
        flashLabelFirst.bottomAnchor.constraint(equalTo: flashLabelSecond.topAnchor, constant: -8).isActive = true
        flashLabelFirst.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        flashLabelSecond.bottomAnchor.constraint(equalTo: flashLabelMultiple.topAnchor, constant: -8).isActive = true
        flashLabelSecond.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        flashLabelMultiple.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        flashLabelMultiple.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        flashLabelThird.topAnchor.constraint(equalTo: flashLabelMultiple.bottomAnchor, constant: 8).isActive = true
        flashLabelThird.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        flashLabelFourth.topAnchor.constraint(equalTo: flashLabelThird.bottomAnchor, constant: 8).isActive = true
        flashLabelFourth.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
}

extension UIColor {
    
    class func orange(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor.orange.withAlphaComponent(a)
    }
    class func pantone_roseQuartz(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor(red: 247/255, green: 202/255, blue: 201/255, alpha: a)
    }
    class func pantone_serenity(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor(red: 145/255, green: 168/255, blue: 209/255, alpha: a)
    }
    class func pantone_greenery(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor(red: 136/255, green: 176/255, blue: 75/255, alpha: a)
    }
    class func pantone_ultraViolet(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor(red: 95/255, green: 75/255, blue: 139/255, alpha: a)
    }
    class func pantone_livingCoral(_ alpha: CGFloat? = nil) -> UIColor {
        let a: CGFloat = alpha == nil ? 1:alpha!
        return UIColor(red: 255/255, green: 111/255, blue: 97/255, alpha: a)
    }
    
}
