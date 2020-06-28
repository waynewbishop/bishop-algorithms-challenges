//
//  numberOfCoins.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation

/**
 A basic greedy algorithm that demonstrates the minimum
 number of coins needed to represent a price is best solved by
 starting with the largest currency type.

 - Parameter totalprice: The person being greeted.
 - Returns: The number of coins needed .
 - Complexity: O(n) - linear time.
 */

func numberOfCoins(_ totalprice: Int) -> Int {
    
    //define the coin denomination
    let currency = [20, 5, 1]
    var amount: Int = totalprice
    
    var count: Int = 0
    var returned: Int = 0
    var numCoins: Int = 0

    
    //breakdown and analyze each coin type
    for c in currency {
        count = (amount / c)
        returned = count * c
        
        //tally the number of coins
        numCoins += count
        print("\(count) times $\(c) = $\(returned)")
        amount -= returned
    }
    
    return numCoins
}
