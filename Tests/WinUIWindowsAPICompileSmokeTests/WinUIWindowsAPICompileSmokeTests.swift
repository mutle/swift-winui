import XCTest
import WinUI

#if os(Windows)
final class WinUIWindowsAPICompileSmokeTests: XCTestCase {
    func testGeneratedAPICompiles() {
        let _: TextBlock.Type = TextBlock.self
        let _: Window.Type = Window.self
    }
}
#endif
