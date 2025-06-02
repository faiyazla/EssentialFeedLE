//
//  FeedEndpoint.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 02/06/2025.
//

public enum FeedEndpoint {
    
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
