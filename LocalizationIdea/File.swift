//
//  File.swift
//  LocalizationIdea
//
//  Created by Derrick Ho on 11/6/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

func blah() {
	print(MainStrings.Blah == MainStrings(rawValue: "Blah Blah Blah"))
}

extension UIViewController {
	override open class func initialize() {
		blah()
	}
}
