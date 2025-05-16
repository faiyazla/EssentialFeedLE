//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 16/05/2025.
//


import XCTest
import EssentialFeedLE

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
