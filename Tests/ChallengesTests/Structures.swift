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

    
    func testDecisionTree() {
        
        let tree: Decision<Int> = Decision(of: "Scores")
        
        let x1: Int = 21
        let x2: Int = 16
        
        
        tree.newBranch(x1)
        tree.newLeaf(branch: x1, action: .win, on: .right)

        tree.newBranch(x2)
        tree.newLeaf(branch: x2, action: .hold, on: .right)
        tree.newLeaf(branch: x2, action: .hit, on: .left)
        

        
        //how would this model hold boolean values?
        
        
        //display the model
        tree.printModel()

        
        //find answers to questions
        if let answer = tree.findAnswer(for: 16) {
            print("answer is: \(answer)")
        }
        
    }
    
    //iterate through a linked list
    func testEnumerateBST() {
        
        let tree = BSTree<Int>()
        
        for s in numberList {
            tree.append(s)
        }
        
        //3. find a specific value - O(n)
        XCTAssert(tree.contains(9), "test failed: no stack item found..")
                
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
