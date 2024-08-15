//
//  HTTPClient.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 15/08/2024.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
