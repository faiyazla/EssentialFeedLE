//
//  LoadResourcePresenterAdapater.swift
//  EssentialFeedLEiOS
//
//  Created by Faiyaz Ahmed on 21/03/2025.
//

import Foundation
import Combine
import EssentialFeedLE
import EssentialFeedLEiOS

final class LoadResourcePresentationAdapter<Resource, View: ResourceView> {
    private let loader: () -> AnyPublisher<Resource, Error>
    private var cancellable: AnyCancellable?
    var presenter: LoadResourcePresenter<Resource, View>?
    
    init(loader: @escaping () -> AnyPublisher<Resource, Error>) {
        self.loader = loader
    }
    
    func loadResource() {
        presenter?.didStartLoading()
        
        cancellable = loader()
            .dispatchOnMainQueue()
            .sink { [weak self] completion in
            switch completion {
            case .finished: break
            case .failure(let error):
                self?.presenter?.didFinishLoading(with: error)
            }
        } receiveValue: { [weak self] feed in
            self?.presenter?.didFinishLoading(with: feed)
        }
    }
}

extension LoadResourcePresentationAdapter: FeedViewControllerDelegate {
    func didRequestFeedRefresh() {
        loadResource()
    }
}

extension LoadResourcePresentationAdapter: FeedImageCellControllerDelegate {
    func didRequestImage() {
        loadResource()
    }
    
    func didCancelImageRequest() {
        cancellable?.cancel()
        cancellable = nil
    }
}
