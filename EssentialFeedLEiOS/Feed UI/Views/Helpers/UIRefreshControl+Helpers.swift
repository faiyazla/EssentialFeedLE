//
//  UIRefreshControl+Helpers.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/03/2025.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing(): endRefreshing()
    }
}
