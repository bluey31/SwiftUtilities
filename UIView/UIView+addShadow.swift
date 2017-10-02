//
//  UIView+addShadow.swift
//
//  Created by Brendon Warwick on 12/09/2017.
//  Includes preset shadow options as well as a explicit option.
//

import Foundation
import UIKit

extension UIView {

    /// Preset shadow intensities
    enum ShadowIntensity: CGFloat {
        case Weak = 8.0
        case Medium = 28.0
        case ThirdDimension = 40.0
    }

    /// Add a shadow with a preset intensity (Weak, Medium or ThirdDimension)
    func addShadow(intensity: ShadowIntensity) {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = intensity.rawValue
        self.layer.shadowOpacity = intensity == .Weak ? 0.45 : 0.65
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    func addShadow(color: cgColor, radius: CGFloat, opacity: CGFloat, offset: CGSize) {
        self.layer.shadowColor = color
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }

    /// Remove the shadow from the UIView
    func removeShadow() {
        self.layer.shadowColor = UIColor.clear.cgColor
    }
}
