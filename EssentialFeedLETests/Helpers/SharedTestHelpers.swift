//
//  SharedTestHelpers.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 19/02/2025.
//

import Foundation

 func anyNSError() -> NSError {
     return NSError(domain: "any error", code: 0)
 }

 func anyURL() -> URL {
     return URL(string: "http://any-url.com")!
 }
