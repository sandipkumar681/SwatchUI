import XCTest
import SwatchUI     // note: NOT importing SwatchKit

final class ReexportTests: XCTestCase {
    func testSwatchKitComesAlongWithSwatchUI() {
        XCTAssertEqual(Spacing.medium, 16)   // Spacing lives in SwatchKit
    }
}
