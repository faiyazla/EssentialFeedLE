//
//  UIButton+TestHelpers.swift
//  EssentialFeedLEiOSTests
//
//  Created by Faiyaz Ahmed on 16/03/2025.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}

