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

    mutating func fibMemoized() -> Int {
         
        //builds array sequence
        func fibSequence(_ sequence: Array<Int> = [0, 1]) -> Array<Int> {
            
            print("fibSequence called..")
            var final = Array<Int>()
                        
            //mutated copy
            var output = sequence
                        
            let i: Int = output.count
            
            //set base condition - linear time O(n)
            if i == self {
                return output
            }
            
            let results: Int = output[i - 1] + output[i - 2]
            output.append(results)
            
            
            //set iteration
            final = fibSequence(output)
            
            return final
            
            
        } //end function
                       
        //calculate final product - constant time O(1)
        let results = fibSequence()
        let answer: Int = results[results.endIndex - 1] + results[results.endIndex - 2]
        return answer
    }
}

