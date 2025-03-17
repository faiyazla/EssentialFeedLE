//
//  FeedImageCell.swift
//  EssentialFeedLEiOSTests
//
//  Created by Faiyaz Ahmed on 17/03/2025.
//

import UIKit
import EssentialFeedLEiOS

extension FeedImageCell {
    var isShowingLocation: Bool {
        return !locationContainer.isHidden
    }
    
    var locationText: String? {
        return locationLabel.text
    }
    
    var descriptionText: String? {
        return descriptionLabel.text
    }
    
    var isShowingImageLoadingIndicator: Bool {
        return feedImageContainer.isShimmering
    }
    var renderedImage: Data? {
        return feedImageView.image?.pngData()
    }
    var isShowingRetryAction: Bool {
        return !feedImageRetryButton.isHidden
    }
    func simulateRetryAction() {
        feedImageRetryButton.simulateTap()
    }
}
