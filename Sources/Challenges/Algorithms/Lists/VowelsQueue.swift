//
//  VowelsQueue.swift
//  
//
//  Created by Wayne Bishop on 9/11/20.
//

import Foundation

func reverseVowelsQueue(_ sequence: String) -> String  {
    
    var result = Array(sequence)
    let vowels =  Set(arrayLiteral: "a", "e", "i", "o", "u")  //why not an Array??
    let stack = Stack<Character>()
    let queue = Queue<Int>()
    
    //O(n + q)
    
    //push vowels to stack - O(n)
    for (index, s) in sequence.enumerated() {
        let pushStr = String(s)
        
        if vowels.contains(pushStr) {
            stack.push(s)
            queue.enQueue(index)
        }
    }
    
    /*
     deQueue vowels from Queue - O(n). However the assumption
     is that the list of vowels will be smaller than iterating
     through the entire proposed String. Best case constant time - O(1)
    */
    
    while queue.count > 0 {
        if let index: Int = queue.deQueue() {
            if let p = stack.popValue() {
                result[index] = p
            }
        }
    }
    
    return String(result)
}
