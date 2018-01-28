//
//  StackTests.swift
//  SwiftAlgorithmsTests
//
//  Created by Wayne on 1/27/18.
//  Copyright © 2018 Syzygy Softwerks LLC. All rights reserved.
//

import XCTest
@testable import SwiftAlgorithms

class StackTests: XCTestCase {

	var stack = Stack<String>()

    func testStack() {

		XCTAssertTrue(stack.isEmpty)
		XCTAssertNil(stack.top)
		XCTAssert(stack.count == 0)
		XCTAssertNil(stack.pop())
		XCTAssert(stack.description == "[]");

		stack.push("A")
		stack.push("B")
		stack.push("C");

		XCTAssert(stack.description == "[C, B, A]");
		XCTAssertFalse(stack.isEmpty)
		XCTAssert(stack.count == 3)
		XCTAssert(stack.top == "C")

		var value = stack.pop()

		XCTAssert(value == "C")
		XCTAssert(stack.count == 2)
		XCTAssert(stack.top == "B")

		value = stack.pop()

		XCTAssert(value == "B")
		XCTAssert(stack.count == 1)
		XCTAssert(stack.top == "A")

		value = stack.pop()

		XCTAssertTrue(stack.isEmpty)
		XCTAssert(value == "A")
		XCTAssert(stack.count == 0)
		XCTAssertNil(stack.top)
		XCTAssert(stack.description == "[]");
   }
}
