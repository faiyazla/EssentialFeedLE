//
//  FeedCache.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 10/04/2025.
//


public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
