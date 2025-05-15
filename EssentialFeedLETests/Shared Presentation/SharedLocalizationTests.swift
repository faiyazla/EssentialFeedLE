//
//  SharedLocalizationTests.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 15/05/2025.
//

import XCTest
import EssentialFeedLE

class SharedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
    private class DummyView: ResourceView {
         func display(_ viewModel: Any) {}
     }
}
