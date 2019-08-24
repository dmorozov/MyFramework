import Foundation
import BaduUI

public class SomeClass: NSObject {
    private override init() {
        super.init()
    }

    class func hello() -> String {
        return "Hello from MyFramework: " + String(one())
    }
}
