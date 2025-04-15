//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeedLEiOSTests
//
//  Created by Faiyaz Ahmed on 16/03/2025.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}

