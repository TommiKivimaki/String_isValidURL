import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(String_isValidURLTests.allTests),
    ]
}
#endif
