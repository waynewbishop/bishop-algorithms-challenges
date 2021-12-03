//
//  countingSort.swift
//  Counting Sort Algorithm
//
//  Created by Wayne Bishop on 9/2/21.
//

import Foundation


/// Counting Sort Algorithm
/// - Parameter sequence: list of comparable elements
/// - Returns: A Table of elements with frequency
///
public func countingSort(using sequence: Array<Int>) -> Array<Table<Int>?>? {

    //make an assumption about the number of buckets required
    var buckets = Array<Table<Int>?>(repeatElement(nil, count: 10))
    
    
    //trivial case
    guard sequence.count > 0 else {
        return nil
    }
    
    
    for item in sequence {
        
        //check table item - collision..
        if let table = buckets[item] {
            table.add(item)
        }
        else {
            let newTable = Table(item) //new item added..
            buckets[item] = newTable
        }
    }
    
    return buckets
}




/// Counting Sort Algorithm (Implemented as Heap)
/// - Parameter sequence: list of comparable elements
/// - Returns: A Table of elements with frequency
///
public func countingSortWithHeap(using sequence: Array<Int>) -> Array<Table<Int>?>? {
    
    //to determine the size of array we can use a max-heap
    let heap = Heap<Int>(type: .Max)

    
    //determine top value using max-heap
    for item in sequence {
        heap.enQueue(item)
    }
    
    
    guard let top = heap.peek() else {
        return nil
    }
    
    
    //determine the number of buckets required
    var buckets = Array<Table<Int>?>(repeatElement(nil, count: top + 1))
    
    
    //trivial case
    guard sequence.count > 0 else {
        return nil
    }
    
    
    for item in sequence {
        
        //check table item - collision..
        if let table = buckets[item] {
            table.add(item)
        }
        else {
            let newTable = Table(item) //new item added..
            buckets[item] = newTable
        }
    }
    
    
    return buckets
}
