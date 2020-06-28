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

    class Stack<T> {
        
      private var top: Node<T>

      init() {
        top = Node<T>()
      }


      func push(_ element: T) {

        guard top.tvalue != nil else {
          top.tvalue = element
          return
        }

        let newTopNode = Node<T>()

        newTopNode.tvalue = element
        newTopNode.next = top
        top = newTopNode
        
      }


      func popValue() ->T? {
        
        guard let results = top.tvalue else {
          return nil
        }

        if let n = top.next {
          top = n
        } else {
          top.tvalue = nil
        }

        return results
      }



      func peek() -> T? {
        //code goes here..
        return top.tvalue
      }

    }
