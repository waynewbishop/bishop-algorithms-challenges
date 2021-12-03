//
//  fibRec.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation



/// Recursive version of Fibonacci sequence algorithm
/// - Parameter n: positions of sequence
/// - Returns: the calculated result
///
   public func fibRec(_ n: Int) -> Int {
        print("fibRecursive called!")

        if n < 2 {
            return n
        } else {
            return fibRec(n-1) + fibRec(n-2)
        }
    }



