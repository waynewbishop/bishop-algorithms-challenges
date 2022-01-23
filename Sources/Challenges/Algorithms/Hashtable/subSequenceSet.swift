//
//  subSequenceSet.swift
//  
//
//  Created by Wayne Bishop on 1/17/22.
//

import Foundation


/// Returns the longest consective sequence in constant space
/// - Parameter items: the sequence
/// - Returns: count of the longest values
///
func subSequenceSet(items: Array<Int>) -> Int {
    
    //question: why would we need a map atatment to populate a set?
    let sequence = Set(items.map {$0})
        
    var first: Int = 0
    var next: Int = 0
    var counter: Int = 0
    var longest: Int = 0

                
    for s in sequence { //enumerate through the set
        first = s
        while sequence.contains(first) { //question: what is the advantage of calling contains()?
            first = s - 1
        }
        
        next = first
        while sequence.contains(next) {
            counter += 1
            if counter > longest {
                longest = counter
            }
            next += 1
        }
    }
    
    return longest
}
