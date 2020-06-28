//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


/**
   Linked List Algorithm. Provides a model

 - Complexity: O(n) - linear time.
 */

class LLNode <T> {

  var tvalue: T?
  var previous: LLNode?
  var next: LLNode?
}
