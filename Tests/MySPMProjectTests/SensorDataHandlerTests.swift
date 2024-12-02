import XCTest
@testable import MySPMProject

final class SensorDataHandlerTests: XCTestCase {
    func testHandleData() {
        let handler = SensorDataHandler()
        let testData = "Test data".data(using: .utf8)!
        let result = handler.handleData(testData)
        XCTAssertEqual(result, "Test data", "The handleData method should correctly convert data to string")
    }
}