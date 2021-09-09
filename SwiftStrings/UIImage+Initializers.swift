//
//  UIImage+Initializers.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 09.09.2021.
//

import UIKit

extension UIImage {

	/// Creates an image with a given name from the app's bundle without caching it.
	/// - Note:
	/// 	UIImage(named: String) initializer caches the image in memory which will speed up the access.
	///		On the other hand loading a bunch of heavy images can cause performance issues or even app crashes.
	/// - Parameter name: The name of image file.
	convenience init?(uncached name: String) {
		if let path = Bundle.main.path(forResource: name, ofType: nil) {
			self.init(contentsOfFile: path)
		} else {
			return nil
		}
	}
}
