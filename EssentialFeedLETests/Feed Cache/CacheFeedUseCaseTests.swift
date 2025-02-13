//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 13/02/2025.
//

import XCTest

final class CacheFeedUseCaseTests: XCTestCase {

    class LocalFeedLoader {
        init(store: FeedStore) {
            
        }
    }
    
    class FeedStore {
        var deleteCachedFeedCallCount = 0
    }
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
