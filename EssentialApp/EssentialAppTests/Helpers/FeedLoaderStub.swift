//
//  FeedLoaderStub.swift
//  EssentialApp
//
//  Created by Faiyaz Ahmed on 10/04/2025.
//

import EssentialFeedLE

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
