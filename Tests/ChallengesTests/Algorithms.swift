//
//  ChallengesTests.swift
//  ChallengesTests
//
//  Created by Wayne Bishop on 6/26/20.
//

import XCTest

@testable import Challenges


class Algorithms: XCTestCase {
    
    //test input types for algorithms
    var numberList = [8, 2, 10, 9, 7, 5]
    var searchList = [0,4,7,9,13,16,34]
    var trivialNumberList = [1]
    var emptyNumberList: Array<Int> = []
    var textList = ["Dog", "Cat", "Dinasour", "Lion", "Cheetah", "Gazelle", "Elephant", "Aardvark"]
    var triviaTextList = ["Dog"]
    var emptyTextList: Array<String> = []

    
    func testConflictingEvents() {
        
        //start times conflict
        let eventA = Event("Baseball", dateString("09/29/2020 15:00"), dateString("09/29/2020 16:00"))
        let eventC = Event("Karate", dateString("09/29/2020 15:30"), dateString("09/29/2020 15:45"))
        
        //end times conflict
        let eventB = Event("Soccer", dateString("09/24/2020 7:30"), dateString("09/24/2020 9:15"))
        let eventD = Event("Tennis", dateString("09/24/2020 7:15"), dateString("09/24/2020 9:30"))
        
        
        //organize new events
        let events = EventHeap()
        
        events.enQueue(eventA)
        events.enQueue(eventC)
        
        events.enQueue(eventB)
        events.enQueue(eventD)

        
        //print items in decending order..
        for e in events.items {
            if let title = e.title {
                print("\(title): conflict: \(e.conflict)")
            }
        }
        
    }
    
    
    //formats a date
    func dateString(_ item: String) -> Date {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm"
    
        //return the formatted date
        if let results = formatter.date(from: item) {
            return results
        }
        else {
            return Date()
        }
    
    }

        
    
    func testIsPalindrome() -> Bool {
        
        let results = "samiscool".isPalidrome()
        return results
    }

    
    func testReverseVowels() {
        
        let hello = reverseVowels("hello")
        print("reverse vowels: \(hello)")
        
        let binarySearch = reverseVowels("binarySearch")
        print("reverse vowels: \(binarySearch)")
        
    }
    
    
    func testReverseVowelsQueue() {
        
        let hello = reverseVowelsQueue("hello")
        print("reverse vowels: \(hello)")
        
        let binarySearch = reverseVowelsQueue("binarySearch")
        print("reverse vowels: \(binarySearch)")
        
    }
    
        
    
    func testSubSequence() {

        //let sequence: Array<Int> = [1, 9, 3, 10, 4, 20, 2]
        let sequence2: Array<Int> = [36, 41, 56, 35, 44, 33, 34, 92, 43, 32, 42]  //32-36..
        let results = sequence2.subSequence()
        
        print("consecutive sequence: \(results)")
    }

    

    func testBackwardsSequence() {
        
        guard let results = numberList.backwards() else {
           XCTFail("No correct values were passed..")
           return
        }
        
        print("The results are: \(results)")
        
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
