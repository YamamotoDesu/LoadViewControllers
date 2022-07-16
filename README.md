# LoadViewControllers
iOS Unit Testing by Example - Chapter 5

![image](https://user-images.githubusercontent.com/47273077/178744829-44543765-d038-4d50-938d-7fb790badb98.png)

## StoryboardBasedViewControllerTest
StoryboardBasedViewController.swift
```swift
import UIKit

class StoryboardBasedViewController: UIViewController {
    @IBOutlet var label: UILabel!
}

```

<img width="308" alt="LoadViewControllers_—_Main_storyboard_—_Edited" src="https://user-images.githubusercontent.com/47273077/179355965-7e2aed0c-9500-42ec-9db2-2ae5bee89686.png">

```swift
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
```
