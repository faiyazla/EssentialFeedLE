//
//  CoreDataFeedStore.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 27/02/2025.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    
    public init () { }
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
    public func insert(_ items: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
}
