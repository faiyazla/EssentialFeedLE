//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 20/03/2025.
//

import Foundation
import XCTest
import EssentialFeedLE

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
         func display(_ viewModel: Any) {}
     }

     var loadError: String {
         LoadResourcePresenter<Any, DummyView>.loadError
     }

     var feedTitle: String {
         FeedPresenter.title
     }
    
    var commentsTitle: String {
        ImageCommentsPresenter.title
    }
}
