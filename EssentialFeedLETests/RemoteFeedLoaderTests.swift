//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 02/08/2024.
//

import XCTest

class RemoteFeedLoader {
    
    func load() {
        HTTPClient.shared.get(from: URL(string: "https://a-url.com")!)
    }
}
class HTTPClient {
    
    static var shared = HTTPClient()
    
    func get(from url: URL) {}
}
class HTTPClientSpy: HTTPClient {
    var requestURL: URL?
    
    override func get(from url: URL) {
        requestURL = url
    }
}
final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        _ = RemoteFeedLoader()
        let client = HTTPClientSpy()
        HTTPClient.shared = client
      
        
        XCTAssertNil(client.requestURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()
        sut.load()
        
        XCTAssertNotNil(client.requestURL)
    }
    


}
