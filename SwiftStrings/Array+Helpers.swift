//
//  Array+Helpers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 11.08.2021.
//

extension Array where Element: Comparable {

	/// Removes an item from the array in-place.
	/// - Parameter item: An item to remove.
	mutating func remove(item: Element) {
		guard let index = self.firstIndex(of: item) else { return }
		self.remove(at: index)
	}
}
