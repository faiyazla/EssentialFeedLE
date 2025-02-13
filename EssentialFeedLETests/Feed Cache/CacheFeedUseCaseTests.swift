//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 13/02/2025.
//

import XCTest
import EssentialFeedLE

final class CacheFeedUseCaseTests: XCTestCase {

    
    class LocalFeedLoader {
        private let store: FeedStore

        init(store: FeedStore) {
            self.store = store
        }
        
        func save(_ items: [FeedItem]) {
            store.deleteCachedFeedCallCount += 1
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
    
    func test_save_requestsCacheDeletion() {
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)
        let items = [uniqueItem(), uniqueItem()]
        
        sut.save(items)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 1)
    }
    
    //MARK: Helpers
    
    private func uniqueItem() -> FeedItem {
        return FeedItem(id: UUID(), description: "any", location: "any", imageURL: anyURL())
    }
    
    private func anyURL() -> URL {
        return URL(string: "https://any-url.com")!
    }
    
}
