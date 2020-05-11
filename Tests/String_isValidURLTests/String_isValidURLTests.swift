import XCTest
@testable import String_isValidURL

final class String_isValidURLTests: XCTestCase {
    func testIsValidURL() {
      XCTAssertTrue("http://tommikivimaki.com".isValidURL())
      XCTAssertTrue("https://tommikivimaki.com".isValidURL())
      XCTAssertTrue("http://www.tommikivimaki.com".isValidURL())
      XCTAssertTrue("https://www.tommikivimaki.com".isValidURL())
      XCTAssertTrue("http://this.is.url/with/path".isValidURL())
      
      XCTAssertFalse("htp://tommikivimaki.com".isValidURL())
      XCTAssertFalse("http:/tommikivimaki.com".isValidURL())
      XCTAssertFalse("".isValidURL())
    }

    static var allTests = [
        ("testIsValidURL", testIsValidURL),
    ]
}
