//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  EssentialFeedLETests
//
//  Created by Faiyaz Ahmed on 27/02/2025.
//

import XCTest
import EssentialFeedLE

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
    
     func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
     }

     func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
     }
 }
