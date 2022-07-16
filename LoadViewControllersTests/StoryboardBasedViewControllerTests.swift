//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 山本響 on 2022/07/16.
//

@testable import LoadViewControllers
import XCTest
import UIKit

class StoryboardBasedViewControllerTests: XCTestCase {

    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }

}
