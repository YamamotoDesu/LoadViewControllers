//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 山本響 on 2022/07/16.
//

@testable import LoadViewControllers
import XCTest
import UIKit

class XIBBasedViewControllerTests: XCTestCase {
    
//    func test_zero() {
//        XCTFail("Test")
//    }

    func test_loading() {
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }
}
