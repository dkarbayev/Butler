//
//  Operators.swift
//  Butler
//
//  Created by Nick O'Neill on 12/11/15.
//  Copyright © 2015 922am Burrito. All rights reserved.
//

import Foundation

// http://bandes-stor.ch/blog/2015/11/28/help-yourself-to-some-swift/
infix operator ??= : AssignmentPrecedence // matches other assignment operators

/// If `lhs` is `nil`, assigns to it the value of `rhs`.
public func ??=<T>( lhs: inout T?, rhs: @autoclosure () -> T) {
    lhs = lhs ?? rhs()
}
