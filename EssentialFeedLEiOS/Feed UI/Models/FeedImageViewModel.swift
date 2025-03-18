//
//  FeedImageViewModel.swift
//  EssentialFeedLEiOS
//
//  Created by Faiyaz Ahmed on 18/03/2025.
//

import Foundation
import UIKit
import EssentialFeedLE

final class FeedImageViewModel {
    typealias Observer<T> = (T) -> Void
    
    private var task: FeedImageDataLoaderTask?
    private let model: FeedImage
    private let imageLoader: FeedImageDataLoader
    
    init(model: FeedImage, imageLoader: FeedImageDataLoader) {
         self.model = model
         self.imageLoader = imageLoader
     }
    
    var description: String? {
         return model.description
     }

     var location: String?  {
         return model.location
     }

     var hasLocation: Bool {
         return location != nil
     }

     var onImageLoad: Observer<UIImage>?
     var onImageLoadingStateChange: Observer<Bool>?
     var onShouldRetryImageLoadStateChange: Observer<Bool>?
    
    func loadImageData() {
        onImageLoadingStateChange?(true)
        onShouldRetryImageLoadStateChange?(false)
        task = imageLoader.loadImageData(from: model.url, completion: { [weak self] result in
            self?.handle(result)
        })
        
    }
    
    private func handle(_ result: FeedImageDataLoader.Result) {
        if let image = (try? result.get()).flatMap(UIImage.init) {
            onImageLoad?(image)
        } else {
            onShouldRetryImageLoadStateChange?(true)
        }
        onImageLoadingStateChange?(false)
    }
    
    func cancelImageDataLoad() {
        task?.cancel()
        task = nil
    }
}
