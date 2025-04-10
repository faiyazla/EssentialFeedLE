//
//  FeedCache.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 10/04/2025.
//


public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
