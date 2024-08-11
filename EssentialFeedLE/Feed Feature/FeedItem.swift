//
//  FeedItem.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/07/2024.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
