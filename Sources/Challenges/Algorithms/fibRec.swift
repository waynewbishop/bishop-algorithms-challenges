//
//  fibRec.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation


/**
 Linear search provides a basic idea as to how the efficiency of the algorithm is effected as
 its input size grows. In this case, all collection values must be checked to find `evalue`.

 - Parameter n: The value to find in the `Array` collection.
 - Returns: a `Int` value indicating if `evalue` was found.
 - Complexity: O(n) - linear time.
 */

    func fibRec(_ n: Int) -> Int {
        print("fibRecursive called!")

        if n < 2 {
            return n
        } else {
            return fibRec(n-1) + fibRec(n-2)
        }
    }



