//
//  NullStore.swift
//  EssentialApp
//
//  Created by Faiyaz Ahmed on 01/08/2025.
//

import Foundation
import EssentialFeedLE

class NullStore {}

extension NullStore: FeedStore {
    func deleteCachedFeed() throws {}

     func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {}

     func retrieve() throws -> CachedFeed? { .none }
}

extension NullStore: FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws {}
    
    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
