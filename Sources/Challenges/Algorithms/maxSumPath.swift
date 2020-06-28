//
//  maxSumPath.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation


/**
   Given a non-empty binary tree, find the maximum path sum.
 
 - Parameter sequence: The `Array` representation of a binary search tree.
 - Returns: The total sum of the parent node along with its
   left and right child nodes.
 - Important: Makes use of the formulas `2i + 1` and `2i  2` to
   determine child correct child nodes.
 - Complexity: O(n) - linear time.
 */

func maxPathSum(using sequence: Array<Int>) -> Int {
    
    var max: Int = 0
    
    //iterate through each node in the array
    for (pindex, element) in sequence.enumerated() {
        
        //determine child indicies
        let lindex = (2 * pindex) + 1
        let rindex = (2 * pindex) + 2
        
        var left: Int = 0
        var right: Int = 0
        
        
        if sequence.indices.contains(lindex) {
            left = sequence[lindex]
        }
        
        if sequence.indices.contains(rindex) {
            right = sequence[rindex]
        }

        
        //calcuate subtree value
        let total = element + left + right
                
        //compare the subtree totals
        if total > max  {
            max = total
        }
        
    }
    
    return max
    
}



