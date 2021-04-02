//
//  subSequence.swift
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

     - Parameter capacity: The default initial capacity of the `hash table` data structure.
     - Returns: The largest number of consecutive elements.
     */

    public func subSequence() -> Int {
            
        var buckets = Array<Int?>(repeatElement(nil, count: self.capacity)) 
        
        //build bucket list
        for e in self {
            if let evalue = e as? Int  {
                buckets[evalue] = evalue
            }
        }
                
        //use dp to determine the consecutive count of non-open slots - O(n)
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
