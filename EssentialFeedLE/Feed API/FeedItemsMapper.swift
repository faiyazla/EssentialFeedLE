//
//  FeedItemsMapper.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 15/08/2024.
//

import Foundation

 final class FeedItemMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
     static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
         guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
        
    }
}
