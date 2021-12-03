//
//  File.swift
//  File
//
//  Created by Wayne Bishop on 8/18/21.
//

import Foundation

/**
 Linear search provides a basic idea as to how the efficiency of the algorithm is effected as
 its input size grows. In this case, all collection values must be checked to find `evalue`.

 - Parameter n: The value to find in the `Array` collection.
 - Returns: a `Int` value indicating if `evalue` was found.
 - Complexity: O(n) - linear time.
 */

    func fibMemoizedPosition(_ n: Int) -> Int {

        var sequence: Array<Int> = [0, 1]
        var results: Int = 0
        var i: Int = sequence.count
        
        //trivial case
        guard n > i else {
            return n
        }
        
        //all other cases..
        while i <= n {
            results = sequence[i - 1] + sequence[i - 2]
            sequence.append(results)
            i += 1
        }
        
        return results
    }
