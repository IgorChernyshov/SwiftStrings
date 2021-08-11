//
//  BinaryInteger+Helpers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 08.08.2021.
//

// MARK: - Helpers
extension BinaryInteger {

	/// Returns true if number is odd.
	var isOdd: Bool { !isEven }

	/// Returns true if number is even.
	var isEven: Bool { isMultiple(of: 2) }
}
