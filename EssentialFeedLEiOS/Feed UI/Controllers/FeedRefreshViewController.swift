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
    
    private let presenter: FeedPresenter
    
    init(presenter: FeedPresenter) {
        self.presenter = presenter
    }
    
    var onRefresh: (([FeedImage]) -> Void)?
    
    @objc func refresh() {
        presenter.loadFeed()
    }
    
    func display(isLoading: Bool) {
        if isLoading {
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

