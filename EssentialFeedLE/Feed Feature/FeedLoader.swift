//
//  FeedLoader.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/07/2024.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
