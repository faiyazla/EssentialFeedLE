//
//  FeedImageDataLoader.swift
//  EssentialFeedLEiOS
//
//  Created by Faiyaz Ahmed on 17/03/2025.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
