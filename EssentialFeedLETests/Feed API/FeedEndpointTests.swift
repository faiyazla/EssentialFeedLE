//
//  FeedEndpointTests.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 02/06/2025.
//

import XCTest
import EssentialFeedLE

class FeedEndpointTests: XCTestCase {

    func test_feed_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!

        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!

        XCTAssertEqual(received, expected)
    }

}
