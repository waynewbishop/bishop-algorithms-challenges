//
//  Structures.swift
//  ChallengesTests
//
//  Created by Wayne Bishop on 6/26/20.
//

import XCTest
@testable import Challenges

class Structures: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    //test creation of linked list
    func testLinkedList() {
        
        let list = LinkedList<Int>()
        
        list.append(8)
        list.append(10)
        list.append(6)
    }


}
