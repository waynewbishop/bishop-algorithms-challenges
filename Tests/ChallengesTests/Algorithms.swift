//
//  ChallengesTests.swift
//  ChallengesTests
//
//  Created by Wayne Bishop on 6/26/20.
//

import XCTest

@testable import Challenges


class Algorithms: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testFibRec() {
        let position = 10
        print("the recursive total for position \(position) is: \(fibRec(position))")
    }
    
    
    
    func testNumberOfCoins() throws {
        let count = numberOfCoins(56)
        print(count)
    }
    
    
    func testMaxPathSum() throws {
        
        //array is "visualized as tree"
        let sequence = [-10,9,20,0,0,15,7]
        let results = maxPathSum(using: sequence)

        print("maximum path total: \(results)")
    }
    
    
    func testLinearSearch() throws {
      //TODO: add test code here..
    }


}
