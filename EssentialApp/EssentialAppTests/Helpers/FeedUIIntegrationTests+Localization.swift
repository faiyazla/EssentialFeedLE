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
    func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }
}
