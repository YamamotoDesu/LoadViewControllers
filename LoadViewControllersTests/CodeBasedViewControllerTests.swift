//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 山本響 on 2022/07/16.
//

@testable import LoadViewControllers
import XCTest

class CodeBasedViewControllerTests: XCTestCase {

    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()
        
    }

}
