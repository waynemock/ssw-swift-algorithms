//
//  Stack.swift
//  SwiftAlogrithms
//
//  Created by Wayne on 1/27/18.
//  Copyright © 2018 Syzygy Softwerks LLC. All rights reserved.
//

import Foundation

/// Provides a basic LIFO stack data structure.
struct Stack<Element> {
	private var array: [Element] = []

	/// A Boolean value indicating whether the stack is empty.
	/// - Complexity: O(1)
	var isEmpty: Bool {
		return array.isEmpty
	}

	/// The number of elements in the array.
	/// - Complexity: O(1)
	var count: Int {
		return array.count
	}

	/// The top element on the stack.
	///
	/// If the stack is empty, the value of this property is `nil`.
	var top: Element? {
		return array.last
	}

	/// Adds a new element to the top of the stack.
	///
	/// Use this method to push a single element to the top of a mutable stack.
	///
	/// Because stacks increase their allocated capacity using an exponential
	/// strategy, pushing a single element to a stack is an O(1) operation
	/// when averaged over many calls to the `push(_:)` method. When an stack
	/// has additional capacity and is not sharing its storage with another
	/// instance, pushing an element is O(1). When an stack needs to
	/// reallocate storage before pushing or its storage is shared with
	/// another copy, pushing is O(*n*), where *n* is the size of the stack.
	///
	/// - Parameter newElement: The element to push on to the stack.
	///
	/// - Complexity: Amortized O(1) over many additions. If the stack uses an
	///   `Array` instance as its storage, the efficiency is
	///   unspecified.
	mutating func push(_ element: Element) {
		array.append(element)
	}

	/// Removes and returns the first element on the stack.
	///
	/// - Returns: The top element of the stack if the stack is not empty;
	///   otherwise, `nil`.
	///
	/// - Complexity: O(*n*) if the stack is bridged, where *n* is the length
	///   of the array; otherwise, O(1).
	mutating func pop() -> Element? {
		return array.popLast()
	}

	/// Returns the top element of the stack.
	///
	/// If the stack is empty, the value of this property is `nil`.
	func peek() -> Element? {
		return top
	}
}

extension Stack: CustomStringConvertible {
	/// A textual representation of the stack and its elements.
	var description: String {
		return array.reversed().description
	}
}

