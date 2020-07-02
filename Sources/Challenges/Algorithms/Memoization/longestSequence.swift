//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation

/**
 Linear search provides a basic idea as to how the efficiency of the algorithm is effected as its input size grows. In this case, all collection values must be checked to find `evalue`.

 - Parameter evalue: The value to find in the `Array` collection.
 - Returns: a `boolean` value indicating if `evalue` was found.
 - Complexity: O(n) - linear time.
 */


func longestSequence(of key: String, list: String) -> Int {
    
    //initial values
    var current: String
    var counter: Int = 0
    var longest: Int = 0
    
    
    //iterate through list - O(n)
    for s in list {
        
        //current iteration
        current = String(s)
        
        if current == key {
            counter += 1
        }
        else {
            counter = 0
        }
        
        //preserve the longest sequence
        if counter >= longest {
            longest = counter
        }
    }
    
    //return count results
    return longest
    
}
