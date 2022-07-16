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

--------
## XIBBasedViewControllerTests

XIBBasedViewController.swift
```swift

import UIKit

class XIBBasedViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

```

XIBBasedViewControllerTests.swift
```swift
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
```

-------

## CodeBasedViewControllerTest

CodeBasedViewController.swift
```swift
import UIKit

class CodeBasedViewController: UIViewController {
    private let data: String
    
    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(">> create vies here")

    }
    
}
```

CodeBasedViewControllerTests.swift
```swift

@testable import LoadViewControllers
import XCTest

class CodeBasedViewControllerTests: XCTestCase {

    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()
        
    }

}
```
