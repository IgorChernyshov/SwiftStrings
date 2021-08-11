//
//  Int+Helpers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 11.08.2021.
//

extension Int {

	/// Execute a closure "self" times.
	/// - Parameter closure: A closure to execute.
	func times(closure: () -> Void) {
		(0..<self).forEach { _ in closure() }
	}
}
