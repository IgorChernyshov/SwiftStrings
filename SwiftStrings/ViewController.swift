//
//  ViewController.swift
//  SwiftStrings
//
//  Created by Igor Chernyshov on 05.08.2021.
//

import UIKit

final class ViewController: UIViewController {

	@IBOutlet var testLabel: UILabel!

	private var string = "This is a test string"

	override func viewDidLoad() {
		super.viewDidLoad()
//		firstTest()
//		secondTest()
//		testLabel.bounceOut(duration: 2)
//		thirdTest()
//		fourthTest()
	}

	private func firstTest() {
		let attributes: [NSAttributedString.Key: Any] = [
			.foregroundColor: UIColor.white,
			.backgroundColor: UIColor.red,
			.font: UIFont.boldSystemFont(ofSize: 36)
		]

		let attributedString = NSAttributedString(string: string, attributes: attributes)
		testLabel.attributedText = attributedString
	}

	private func secondTest() {
		let attributedString = NSMutableAttributedString(string: string)
		attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 8), range: NSRange(location: 0, length: 4))
		attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 16), range: NSRange(location: 5, length: 2))
		attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 24), range: NSRange(location: 8, length: 1))
		attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 32), range: NSRange(location: 10, length: 4))
		attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 40), range: NSRange(location: 15, length: 6))
		testLabel.attributedText = attributedString
	}

	private func thirdTest() {
		5.times { print("foo") }
	}

	private func fourthTest() {
		var array = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]
		array.remove(item: 3)
		print(array)
	}
}
