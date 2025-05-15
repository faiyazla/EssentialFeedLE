//
//  ResourceErrorViewModel.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 15/05/2025.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
