//
//  LocalFeedImageDataLoaderTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 30/03/2025.
//

import XCTest
import EssentialFeedLE

final class LocalFeedImageDataLoader {
    init(store: Any) {
        
    }
}


class LocalFeedImageDataLoaderTests: XCTestCase {
    
    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        
        XCTAssertTrue(store.receivedMessages.isEmpty)
    }
    
    //MARK: Helpers
    
    private func makeSUT(currentData: @escaping () -> Date = Date.init, file: StaticString = #file, line: UInt = #line) -> (LocalFeedImageDataLoader, FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedImageDataLoader(store: store)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }
    
    private class FeedStoreSpy {
        let receivedMessages = [Any]()
    }
}
