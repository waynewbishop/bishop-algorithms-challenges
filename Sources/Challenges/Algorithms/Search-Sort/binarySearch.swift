//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation


extension Array where Element: Comparable {
    
        
    //returns middle index
    var midIndex: Int {
      return startIndex + (count / 2)
    }

    /**
     Linear search provides a basic idea as to how the efficiency of the algorithm is effected as
     its input size grows. In this case, all collection values must be checked to find `evalue`.

     - Parameter n: The value to find in the `Array` collection.
     - Returns: a `Int` value indicating if `evalue` was found.
     - Complexity: O(n) - linear time.
     */

    public mutating func binarySearch(forElement key: Element) -> Bool {
          
          var result = false
          
          //establish indices
          let min = self.startIndex
          let max = self.endIndex - 1
          let mid = self.midIndex
          
          
          //check bounds
          if key > self[max] || key < self[min] {
              print("search value \(key) not found..")
              return false
          }
          
          
          //evaluate chosen number..
          let n = self[mid]
          
          
          print(String(describing: n) + "value attempted..")
          
          
          if n > key {
              var slice = Array(self[min...mid - 1])
              result = slice.binarySearch(forElement: key)
          }
              
          else if n < key {
              var slice = Array(self[mid + 1...max])
              result = slice.binarySearch(forElement: key)
          }
              
          else {
              print("search value \(key) found..")
              result = true
          }
          
          return result
      }
    
    
}
