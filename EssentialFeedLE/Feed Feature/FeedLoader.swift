//
//  FeedLoader.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/07/2024.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    func load(completion: @escaping (Result) -> Void)
}
