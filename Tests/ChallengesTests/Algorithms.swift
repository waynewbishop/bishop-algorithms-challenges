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
        //add code here..
        
    }
    
    
    //test fibonacci sequence to
    func testFibMemoized() {
        let position = 4
        
        let result = position.fibMemoized()
        print(result)
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
