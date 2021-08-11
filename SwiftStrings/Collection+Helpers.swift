//
//  Collection+Helpers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 08.08.2021.
//

// MARK: - Helpers
extension Collection where Element: BinaryInteger {

	/// Counts odd and even elements in collection.
	/// - Returns: A tuple with odd and even count.
	func countOddEven() -> (odd: Int, even: Int) {
		var even = 0
		var odd = 0

		for val in self {
			if val.isMultiple(of: 2) {
				even += 1
			} else {
				odd += 1
			}
		}

		return (odd, even)
	}
}
