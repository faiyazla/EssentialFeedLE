//
//  FeedRefreshViewController.swift
//  EssentialFeedLEiOS
//
//  Created by Faiyaz Ahmed on 17/03/2025.
//

import UIKit
import EssentialFeedLE

public final class FeedRefreshViewController: NSObject {
    
    public lazy var view = binded(UIRefreshControl())
    
    private let viewModel: FeedViewModel
        
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    var onRefresh: (([FeedImage]) -> Void)?
    
    @objc func refresh() {
        viewModel.loadFeed()
    }
    
    private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onLoadingStateChange = { [weak self] isLoading in
            if isLoading {
                self?.view.beginRefreshing()
            } else {
                self?.view.endRefreshing()
            }
        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}

