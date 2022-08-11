//
// Rank.swift
//  
//
//  Created by Wayne Bishop on 7/7/22.
//

import Foundation

func rankUnsorted(items: Array<Int>) -> Array<Int> {
    
    //create a unique, sorted series
    let series = Set(items.map({$0})).sorted() //quicksort or mergesort
    var rank: Int = 0
    var results = Array<Int>()
    
    //O(n + i)
    
    for s in items { //O(n) - all cases..
        if let first = series.firstIndex(of: s) { //O(n) worst case..
            rank = first + 1
            results.append(rank)
        }
    }
    
    return results
}


func rankSorted(items: Array<Int>) -> Array<Int>? {
    
    //create a unique, sorted series
    let series = items.sorted()
    var results = Array<Int>()
    
    var rank: Int = 0
    var dict = Dictionary<Int, Int>()
    var previous: Int = 0
    
    for s in series {
        
        if previous != s {
            previous = s
            rank += 1
        }
        
        dict.updateValue(rank, forKey: s) //note: the dictionary isn't required for this to work
        results.append(rank)
    }

    return results    
}
