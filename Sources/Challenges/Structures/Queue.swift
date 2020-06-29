//
//  Queue.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


  public class Queue<T> {
            
        private var top: Node<T>?
        private var counter: Int = 0
        
        public init() {
          top = Node<T>()
        }
        
        
        //the number of items
        var count: Int {
            return counter
        }

        //MARK: Supporting Functions
        
        
        //retrieve the top most item
        func peek() -> T? {
            return top?.tvalue
        }
        
        
        
        //check for the presence of a value
  public func isEmpty() -> Bool {
            
            guard top?.tvalue != nil else {
                return true
            }
            return false
        }


        
        //MARK: Queuing Functions

        
        //enqueue the specified object
    public func enQueue(_ key: T) {
            
            
            //trivial case
            guard top?.tvalue != nil else {
                top?.tvalue = key
                counter += 1
                return
            }
            
            let childToUse = Node<T>()
            var current = top
        
            
            //cycle through the list - linear time
            while current?.next != nil {
                current = current?.next
            }
            
            
            //append new item
            childToUse.tvalue = key
            current?.next = childToUse
            counter += 1
        }
        

        
        //retrieve items from the top level - O(1) time
    public func deQueue() -> T? {
        
        
            //determine key instance
            guard top?.tvalue != nil else {
                return nil
            }
        
            
            //retrieve and queue the next item
            let queueItem: T? = top?.tvalue
        
        
            //use optional binding
            if let nextItem = top?.next {
              top = nextItem
            }
            else {
                top = Node<T>()
            }
        
            counter -= 1
        
            return queueItem
            
        }
            
    } //end class
