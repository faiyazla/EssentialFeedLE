//
//  FeedImagePresenterTests.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 26/03/2025.
//

import XCTest
import EssentialFeedLE

class FeedImagePresenterTests: XCTestCase {
    
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.description, image.description)
        XCTAssertEqual(viewModel.location, image.location)
    }
}
