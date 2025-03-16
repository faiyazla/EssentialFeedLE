//
//  UIButton+TestHelpers.swift
//  EssentialFeedLEiOSTests
//
//  Created by Faiyaz Ahmed on 16/03/2025.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}

