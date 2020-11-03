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
