//
//  XCTTestCase+MemoryLeakTracking.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 21/08/2024.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory.", file: file, line: line)
        }
    }
}
