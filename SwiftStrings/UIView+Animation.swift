//
//  UIView+Animation.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 11.08.2021.
//

import UIKit

extension UIView {

	/// Runs animation of reducing view size to 0.00001 over the given duration.
	/// - Parameter duration: Animation duration in seconds.
	func bounceOut(duration: TimeInterval) {
		let targetScale: CGFloat = 0.00001
		UIView.animate(withDuration: duration) {
			self.transform = CGAffineTransform(scaleX: targetScale, y: targetScale)
		}
	}
}
