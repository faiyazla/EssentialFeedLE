//
//  SceneDelegateTests.swift
//  EssentialAppTests
//
//  Created by Faiyaz Ahmed on 15/04/2025.
//

import XCTest
import EssentialFeedLEiOS
@testable import EssentialApp

final class SceneDelegateTests: XCTestCase {
    
    func test_configureWindw_setsWindowAsKeyandVisible() {
        let window = UIWindowSpy()
        let sut = SceneDelegate()
        sut.window = window
        
        sut.configureWindow()
        
        XCTAssertEqual(window.makeKeyAndVisibleCallCount, 1, "Expected to make window key and visible")
    }
    
    func test_sceneWillConnectToSession_configurationRootViewController() {
        
        let sut = SceneDelegate()
        sut.window = UIWindow()
        
        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation, "Expected a root navigation controller as root, got \(String(describing: root)) instead")
        XCTAssertTrue(topController is FeedViewController, "Expected a feed controller as top view controller, got \(String(describing: topController)) instead")
    }
    
    private class UIWindowSpy: UIWindow {
        
        var makeKeyAndVisibleCallCount = 0
        
        override func makeKeyAndVisible() {
            makeKeyAndVisibleCallCount += 1
        }
    }
}
