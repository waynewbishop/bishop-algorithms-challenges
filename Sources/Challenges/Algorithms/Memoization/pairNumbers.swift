//
//  pairNumbers.swift
//  
//
//  Created by Wayne Bishop on 12/2/21.
//

import Foundation


let sequence = [8, 10, 2, 9, 7, 5]

//non-memoized version - O(n ^ 2)
func pairNumbers(sum: Int) -> (Int, Int) {
    
    for a in sequence {
        let diff = sum - a
        
        for b in sequence {
            print("new iteration..")
            if (b != a) && (b == diff) {
                return (a, b)
            }
        }
    }
    
    return (0, 0)
}


//memoized version - O(n + d)
func pairNumbersMemoized(sum: Int) -> (Int, Int) {
    
    var addends = Set<Int>()
    
    for a in sequence {
        print("new iteration..")
        let diff = sum - a
        
        if addends.contains(diff) { //constant time lookup
            return (a, diff)
        }
        //store previously seen value
        else {
            addends.insert(a)
        }
    }
    
    return (0, 0)
}
