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

public struct SimpleStack <T> {

      private var elements : [T] = [T]()

    public init() {
        //playground support
    }
    
       //the number of items
        var count: Int {
            return elements.count
        }
      
    public mutating func push(_ element: T) {
          elements.append(element)
      }

    public mutating func pop() -> T? {
          return elements.popLast()
      }

    public func peek() -> T? {
          return elements.last
      }
    
    }
