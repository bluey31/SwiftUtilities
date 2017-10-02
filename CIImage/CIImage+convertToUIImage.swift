//
//  CIImage+convertToUIImage.swift
//
//  Created by Brendon Warwick on 19/04/2017.
//  Converts CIImage to UIImage
//

import Foundation
import CoreGraphics
import UIKit

extension CIImage {
    /// Converts CIImage to UIImage
    func toUIImage() -> UIImage{
        let context = CIContext.init(options: nil)
        let cgImage = context.createCGImage(self, from: self.extent)!
        let image: UIImage = UIImage.init(cgImage: cgImage)
        return image
    }
}
