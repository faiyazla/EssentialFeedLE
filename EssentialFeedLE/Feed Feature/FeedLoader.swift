//
//  FeedLoader.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/07/2024.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
