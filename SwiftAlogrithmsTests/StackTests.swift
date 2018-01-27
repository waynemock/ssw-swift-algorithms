//
//  StackTests.swift
//  SwiftAlogrithmsTests
//
//  Created by Wayne on 1/27/18.
//  Copyright © 2018 Syzygy Softwerks LLC. All rights reserved.
//

import XCTest
@testable import SwiftAlogrithms

class StackTests: XCTestCase {

	var stack = Stack<String>()	/// If the stack is empty, the value of this property is `nil`.

    func testStack() {

		XCTAssertTrue(stack.isEmpty)
		XCTAssertNil(stack.top)
		XCTAssertNil(stack.peek())
		XCTAssert(stack.count == 0)
		XCTAssertNil(stack.pop())

		stack.push("A")
		stack.push("B")
		stack.push("C");

		XCTAssertFalse(stack.isEmpty)
		XCTAssert(stack.count == 3)
		XCTAssert(stack.top == stack.peek())
		XCTAssert(stack.top == "C")

		var value = stack.pop()

		XCTAssert(value == "C")
		XCTAssert(stack.count == 2)
		XCTAssert(stack.top == stack.peek())
		XCTAssert(stack.top == "B")

		value = stack.pop()

		XCTAssert(value == "B")
		XCTAssert(stack.count == 1)
		XCTAssert(stack.top == stack.peek())
		XCTAssert(stack.top == "A")

		value = stack.pop()

		XCTAssertTrue(stack.isEmpty)
		XCTAssert(value == "A")
		XCTAssert(stack.count == 0)
		XCTAssert(stack.top == stack.peek())
		XCTAssertNil(stack.top)
    }
}
