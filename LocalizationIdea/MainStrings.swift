//
//  MainStrings.swift
//  LocalizationIdea
//
//  Created by Derrick Ho on 11/6/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import Foundation

/*
Normally we would make use of NS_STRING_ENUM 

typedef NSString * MainStrings NS_STRING_ENUM;

static MainStrings const MainStringsHelloWorld = @"Hello World";
static MainStrings const MainStringsBlah = @"Blah Blah Blah";

in Objective-C these would be just global string, while in swift it is a struct.
Global strings are great because they reduce hard coding of strings.  However, at the
time of this writing, a global Swift string or a global enum string are swift only features.
To get global strings that are compatible with both Objective-c and swift, we need could use the
above to do it.

However, the world is moving forward with swift, so do Old Objective-C constructs Need to exist?

Maybe not....

When a NS_STRING_ENUM is ported over to swift, it becomes a struct with a bunch of static properties.
Below I have manually implemented it and because structs are not supported in Objective-c I made it a class instead.

The benefits of this approach include:
1) Written in swift
2) Same API for Obj-c and swift rather than OBJ-c with global string and Swift with a struct
3) Xcode Likes it better.  Xcode has difficulties jumping to objective-c files and usually renders a swifty interface rather than the objective-c file.  Sometimes It can't even render it forcing the programmer to search for the file in the project navigator, or use some other work around.
*/

public final class MainStrings: NSObject {
	
	public let localizedString: String
	public let rawValue: String
	
	private init?(rawValue: String) {
		self.rawValue = rawValue
		self.localizedString = NSLocalizedString(rawValue, tableName: "MainStrings", bundle: Bundle.main, value: rawValue, comment: "")
	}

	// MARK: - Hashable
	
	public override var hashValue: Int { return rawValue.hashValue }
	
	public static func ==(lhs: MainStrings, rhs: MainStrings) -> Bool {
		return lhs.rawValue == rhs.rawValue
	}
	
	// MARK: - Debug
	public override var description: String {
		return String(describing: type(of: self))
	}
	public override var debugDescription: String {
		return String(describing: type(of: self))
	}
	
	// MARK: - Enum "states"
	public static let HelloWorld = MainStrings(rawValue: "Hello World")
	public static let Blah = MainStrings(rawValue: "Blah Blah Blah")
}
