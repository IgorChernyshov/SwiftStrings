//
//  String+Helpers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 05.08.2021.
//

import Foundation

extension String {

	/// Remove a prefix if it exists.
	/// - Parameter prefix: Prefix to remove.
	/// - Returns: A string without specified prefix.
	func deletingPrefix(_ prefix: String) -> String {
		guard self.hasPrefix(prefix) else { return self }
		return String(self.dropFirst(prefix.count))
	}

	/// Remove a suffix if it exists.
	/// - Parameter suffix: Suffix to remove.
	/// - Returns: A string without specified suffix.
	func deletingSuffix(_ suffix: String) -> String {
		guard self.hasSuffix(suffix) else { return self }
		return String(self.dropLast(suffix.count))
	}

	/// Capitalize first word in the string.
	var capitalizedFirst: String {
		guard let firstLetter = self.first else { return "" }
		return firstLetter.uppercased() + self.dropFirst()
	}

	/// Check if this string contains any string from the givven array.
	/// - Parameter array: Array of strings.
	/// - Returns: Check result.
	func containsAny(of array: [String]) -> Bool {
		array.contains(where: self.contains)
	}
}
