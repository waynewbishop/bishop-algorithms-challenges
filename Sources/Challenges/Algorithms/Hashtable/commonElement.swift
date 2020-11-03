//
//  commonElement.swift
//  
//
//  Created by Wayne Bishop on 11/2/20.
//

import Foundation


//note: this function assumed the values in each matrix row is sorted.

public func commonElement(_ matrix: [[Int]]) -> Int? {
    
    var buckets = Array<Table<Int>?>(repeatElement(nil, count: matrix.count * matrix[0].count ))
    
    //trivial case
    guard matrix.count > 0, matrix[0].count > 0 else{
        return -1
    }

    //assumes non-duplicate values per row
    for row in matrix {
        for item in row {

            //check table item
            if let table = buckets[item] {
                table.add(item)
                
                //determine match
                if table.count == matrix.count {
                    return table.tvalue
                }
            }
            else {
                let newTable = Table(item)
                buckets[item] = newTable
            }
            
        }
    }
        
    
    return -1
}
