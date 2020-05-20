//
//  UIViewExtension.swift
//  Calculator-NoStoryboard
//
//  Created by Ian Richins on 5/19/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingBottom: CGFloat, paddingLeading: CGFloat, paddingTrailing: CGFloat, width: CGFloat? = nil, height: CGFloat? = nil) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let leading = leading {
            
            self.leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: paddingLeading).isActive = true
        }
        if let width = width {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
            
        }
        if let height = height {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

struct SpaceingConstants {
    static let outerHorizontalPadding: CGFloat = 32.0
    static let outerVerticalPadding: CGFloat = 16.0
    static let verticalObjectBuffer: CGFloat = 8.0
    static let smallElementHeight: CGFloat = 24.0
    static let mediumElementHeight: CGFloat = 32.0
}

extension UIColor {
    static let burntRed = UIColor(named: "burtRed")!
    static let mintGreen = UIColor(named: "mintGreen")!
    static let moneyGreen = UIColor(named: "moneyGreen")!
    static let peach = UIColor(named: "peach")!
    static let subtleGreen = UIColor(named: "subtleGreen")!
}

