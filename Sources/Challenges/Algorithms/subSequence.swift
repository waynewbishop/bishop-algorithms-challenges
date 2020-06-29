//
//  Palindrome.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


extension Array where Element: Comparable {
        
        
    /**
     Given an array of integers, find the length of the longest sub-sequence
     such that elements in the subsequence are consecutive integers,
     the consecutive numbers can be in any order.

     - Parameter totalprice: The person being greeted.
     - Returns: The number of coins needed .
     - Complexity: O(n) - linear time.
     */

    public func subSequence(capacity: Int = 100) -> Int {
            
        var buckets = Array<Int?>(repeatElement(nil, count: capacity))
        
        //build bucket list
        for e in self {
            if let evalue = e as? Int  {
                buckets[evalue] = evalue
            }
        }
                
        //use dp to determine the consecutive count of non-open slots
        var counter: Int = 0
        var longest: Int = 0
        
        for current in buckets {
            
            //current iteration
            if current != nil {
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
                    
      return longest
        
    }

} //end extension
