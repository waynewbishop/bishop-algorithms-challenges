//
//  breadthFirstSearch.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation


extension BSNode {
    
  //execute breadth-first search
  public func BFSTraverse() -> () {
                  
        let bsQueue = Queue<BSNode<T>>()
          
        //queue a starting node
        bsQueue.enQueue(self)
                  
        while bsQueue.peek() != nil {
              
          //traverse the next queued node
          if let bitem = bsQueue.deQueue() {
                                  
              if let key = bitem.key {
                  print("now traversing item: \(key)")
              }
                  
                  
              //check left decendant
              if let left = bitem.left {
                  bsQueue.enQueue(left)
              }
                  
                  
              //check right decendant
              if let right = bitem.right {
                  bsQueue.enQueue(right)
              }
                  
          }
              
        } //end while
          
          print("bfs traversal complete..")
          
      }
    
}
