//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeedLEiOSTests
//
//  Created by Faiyaz Ahmed on 16/03/2025.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
