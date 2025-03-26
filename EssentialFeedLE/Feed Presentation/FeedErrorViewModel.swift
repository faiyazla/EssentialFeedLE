//
//  FeedErrorViewModel.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 26/03/2025.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
