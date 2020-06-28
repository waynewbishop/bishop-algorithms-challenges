//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


/**
   Stack algorithm. Provides a model

 - Complexity: O(1) - constant time average time for all operations.
 */

    struct SimpleStack <T> {

      private var elements : [T] = [T]()

       //the number of items
        var count: Int {
            return elements.count
        }
      
      mutating func push(_ element: T) {
          elements.append(element)
      }

      mutating func pop() -> T? {
          return elements.popLast()
      }

      func peek() -> T? {
          return elements.last
      }
    }
