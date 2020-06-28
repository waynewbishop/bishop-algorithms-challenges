//
//  Syntax.swift
//  ChallengesTests
//
//  Created by Wayne Bishop on 6/26/20.
//

import XCTest
@testable import Challenges

class Syntax: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    
   func  testProtocolAsType() {
        
        let blockchain = Blockchain()

        //create a new peer
        let peer = Peer()

        //create a new miner
        let miner = Miner()

    
        //now the list can accept two different types of objects.
        blockchain.list.append(peer)
        blockchain.list.append(miner)

    }

}
