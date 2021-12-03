//
//  fibMemoized.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation

extension Int {

    
    /**
     Linear search provides a basic idea as to how the efficiency of the algorithm is effected as
     its input size grows. In this case, all collection values must be checked to find `evalue`.

     - Parameter n: The value to find in the `Array` collection.
     - Returns: a `Int` value indicating if `evalue` was found.
     - Complexity: O(n) - linear time.
     */
    
    //builds array sequence
    func fibMemoized() -> Array<Int> {
    
        var output: Array<Int> = [0, 1]
        var i: Int = 2
        
        //trivial case
        guard self > i else {
            return output
        }
        
        //all other cases..
        while i <= self {
            let results: Int = output[i - 1] + output[i - 2]
            output.append(results)
            i += 1
        }
        
        return output
        
    }
    
}

