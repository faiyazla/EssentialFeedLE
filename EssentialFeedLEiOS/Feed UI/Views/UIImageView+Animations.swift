//
//  UIImageView+Animations.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 20/03/2025.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }
        
        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
