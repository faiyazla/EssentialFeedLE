//
//  RemoteFeedItem.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 18/02/2025.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
