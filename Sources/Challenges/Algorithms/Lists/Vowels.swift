//
//  Vowels.swift
//  
//
//  Created by Wayne Bishop on 9/8/20.
//

import Foundation


/*
 challenge: you've been asked by your manager to build a new algorithm to reverse only vowels in any propose String.
 How would you build such a model?
 */

func reverseVowels(_ sequence: String) -> String  {
    
    var result: String = ""
    let vowels =  Set(arrayLiteral: "a", "e", "i", "o", "u")  //question: why use a set?
    let stack = Stack<String>()
    
    //push vowels to stack - O(n)
    for s in sequence {
        let pushStr = String(s)
        
        if vowels.contains(pushStr) {
            stack.push(pushStr)
        }
    }
    
    if stack.count == 0 {
        return sequence
    }

    
    //pop vowels from stack - O(n)
    for s in sequence {
        var popStr = String(s)
        
        if vowels.contains(popStr) {
            let p = stack.popValue()
            if let item = p {
                popStr = item
            }
        }
        
        result += popStr
    }
    
    return result
}
