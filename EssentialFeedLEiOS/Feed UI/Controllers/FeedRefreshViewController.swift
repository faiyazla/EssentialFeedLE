//
//  FeedRefreshViewController.swift
//  EssentialFeedLEiOS
//
//  Created by Faiyaz Ahmed on 17/03/2025.
//

import UIKit
import EssentialFeedLE

public final class FeedRefreshViewController: NSObject, FeedLoadingView {
    
    public lazy var view = loadView()
    
    private let loadFeed: () -> Void
    
    init(loadFeed: @escaping () -> Void) {
        self.loadFeed = loadFeed
    }
    
    var onRefresh: (([FeedImage]) -> Void)?
    
    @objc func refresh() {
        loadFeed()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}

