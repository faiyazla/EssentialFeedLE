//
//  FeedPresenter.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 26/03/2025.
//

import Foundation

public final class FeedPresenter {
    
    public static var title: String {
        
        NSLocalizedString("FEED_VIEW_TITLE",
                          tableName: "Feed",
                          bundle: Bundle(for: FeedPresenter.self),
                          value: "",
                          comment: "Title for the feed view")
    }
    
    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
        FeedViewModel(feed: feed)
    }
}
