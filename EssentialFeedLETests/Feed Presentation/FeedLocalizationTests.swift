//
//  FeedLocalizationTests.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 20/03/2025.
//

import XCTest
@testable import EssentialFeedLE

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
