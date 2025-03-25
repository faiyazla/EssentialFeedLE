//
//  FeedErrorViewModel.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 25/03/2025.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
         return FeedErrorViewModel(message: nil)
     }

     static func error(message: String) -> FeedErrorViewModel {
         return FeedErrorViewModel(message: message)
     }
}
