//
//  longestSequence.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation

/**
 Finds the longest count of recurring characters given a specified `String`.

 - Parameter key: The search value.
 - Parmeter: list: The `String` value to be queried.
 - Returns: The number of found occurences.
 - Complexity: Average, O(n) - linear time.
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
