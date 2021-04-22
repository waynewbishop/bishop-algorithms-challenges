//
//  Structures.swift
//  ChallengesTests
//
//  Created by Wayne Bishop on 6/26/20.
//

import XCTest

@testable import Challenges


/*
 notes: The goal of these tests is to showcase the funtionality
 of having custom data structures (organized by reference) conform
 to the features and functionality of standard Swift collection
 (e.g. Array, Dictionary and Set)
 */

class Structures: XCTestCase {

    var numberList: Array<Int> = [8, 2, 10, 9, 1, 5]
    
    
    //iterate through a linked list
    func testEnumerateBST() {
        
        let tree = BSTree<Int>()
        
        for s in numberList {
            tree.append(s)
        }
                 
        //1. tree fast-enumeration - O(n)
        for t in tree {
            print("item: \(t)")
        }
        
        //2. enumerate based on index - O(n)
        for (i, t) in tree.enumerated() {
            print("index \(i) holds: \(t)")
        }
        

        //3. find a specific value - O(n)
        XCTAssert(tree.contains(9), "test failed: no stack item found..")
        
        
        let baseValue: Int = 2
        
        //4. for-each trailing closure - O(n)
        tree.forEach { value in
            print(value * baseValue) //capture scope from beyond the closure..
        }
        
    }
    
    
    
    //test creation of linked list
    func testLinkedList() {
        
        let list = LinkedList<Int>()
        
        list.append(8)
        list.append(10)
        list.append(6)
    
        
        guard list.head.tvalue != nil else {
            XCTFail("fail: head value not initialized..")
            return
        }
            
    }

}
