import Foundation

extension String {
  /// Checks if a string conforms to URL formats:
  /// * http://tommikivimaki.com
  /// * https://tommikivimaki.com
  /// * http://www.tommikivimaki.com
  /// * https://www.tommikivimaki.com
  /// String may include also a path
  /// - Returns: True if a string matches the defined formats.
  func isValidURL() -> Bool {
    let pattern = #"(http|https):{1}/{2}[A-Za-z0-9]+\.[A-Za-z0-9]+"#
    
    let range = NSRange(location: 0, length: self.utf8.count)
    
    let regex = try! NSRegularExpression(pattern: pattern)
    return regex.firstMatch(in: self, options: [], range: range) != nil
  }
}
