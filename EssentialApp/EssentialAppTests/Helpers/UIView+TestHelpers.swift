//
//  UIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Faiyaz Ahmed on 18/04/2025.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
