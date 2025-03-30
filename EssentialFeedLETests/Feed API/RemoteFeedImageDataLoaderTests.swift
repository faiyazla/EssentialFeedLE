//
//  RemoteFeedImageDataLoaderTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 30/03/2025.
//

import XCTest
import EssentialFeedLE

class RemoteFeedImageDataLoader {
    
    init(client: Any) {
        
    }
}

final class RemoteFeedImageDataLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        
        XCTAssertTrue(client.requestURLs.isEmpty)
    }
    
    private func makeSUT(url: URL = anyURL(), file: StaticString = #file, line: UInt = #line) -> (sut: RemoteFeedImageDataLoader, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = RemoteFeedImageDataLoader(client: client)
        trackForMemoryLeaks(client, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, client)
    }

    private class HTTPClientSpy {
        var requestURLs = [URL]()
    }
}
