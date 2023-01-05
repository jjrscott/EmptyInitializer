import XCTest
@testable import EmptyInitializer

struct Cow: Decodable {
    let feet: [Int]
}

final class EmptyInitializerTests: XCTestCase {
    func testExample() throws {
        let cow = try EmptyInitializer.initialize(type: Cow.self)
        
        XCTAssertEqual(cow.feet, [])        
    }
}
