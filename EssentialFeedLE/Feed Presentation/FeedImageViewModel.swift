//
//  FeedImageViewModel.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 27/03/2025.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
