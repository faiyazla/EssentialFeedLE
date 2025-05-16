//
//  FeedImagePresenter.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 27/03/2025.
//

import Foundation

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
             description: image.description,
             location: image.location)
    }
}
