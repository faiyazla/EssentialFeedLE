//
//  FeedImageDataStore.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 30/03/2025.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
