//
//  ImageCommentsEndpoint.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 02/06/2025.
//

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
