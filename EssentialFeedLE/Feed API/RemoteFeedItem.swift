//
//  RemoteFeedItem.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 18/02/2025.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
