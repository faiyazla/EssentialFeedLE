//
//  FeedPresenterTests.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 26/03/2025.
//

import XCTest

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessageTpView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    //MARK: Helpers
    
    private class ViewSpy {
        
        let messages = [Any]()
    }
}
