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

    
    func testRankUnsorted() {

        //first example
        let items_example1: Array<Int> = [1, 12, 4, 12]
        print(rankUnsorted(items: items_example1))

        
        //second example
        let items_example2: Array<Int> = [5, 3, 3, 8, 5]
        print(rankUnsorted(items: items_example2))
    }

    
    func testDFSTraversal() {
        
        let  tree = BSTree<Int>()
        
        tree.append(8)
        tree.append(4)
        tree.append(20)
        tree.append(56)
        tree.append(806)
        tree.append(2)
        
        //dfs traversal
        //tree.root.traverse()
        
        //topological sort (post-order)
        tree.root.traversePost()
        
        tree.root.traverse { Node in
            
        }
        
    }
    
    func testWordle() {
        
        //start the game
        let wordle = Wordle()
        wordle.start()
        
        /*
         note: to start game, call wordle.attempt("your selected string")
         from the LLDB command line. the game will attempt 6 time to
         match your word with it's chosen selection.
         */
        
        _ = wordle.attempt("along")
    }
    
    func testPairNumbers() {
        
        //non-memoized version
        let results_a = pairNumbers(sum: 11)
        print("values are \(results_a.0) and \(results_a.1)")
        
        //memoized version
        let results_b = pairNumbersMemoized(sum: 11)
        print("values are \(results_b.0) and \(results_b.1)")
        
    }
    
    func testValueReference() {
 
        //struct instance
        var a = sCar(color: "Blue")
        let b = a
        a.color = "Green"
        print("\(a.color), \(b.color)")  //what will this print?

        
        //class instance
        let c = cCar(color: "Blue")
        let d = c
        c.color = "Green"
        print("\(c.color), \(d.color)") //what will this print?
        
    }

    
    
    func testCountingSort() {
        
        let sequence = [0, 1, 3, 1, 2, 4, 3, 2]
        
        let results = countingSort(using: sequence)
        
        if let table = results {
            for item in table {
                if let i = item {
                    print("item: \(i.tvalue) seen \(i.count) times.")
                }
            }
        }

        
    }
    
    
    func testCountingSortWithHeap() {
        
        let sequence = [0, 1, 3, 1, 2, 4, 3, 2]
        
        let results = countingSortWithHeap(using: sequence)

        
        if let table = results {
            for item in table {
                if let i = item {
                    print("item: \(i.tvalue) seen \(i.count) times.")
                }
            }
        }
        
    }

    
    func testBaseTen() {
        
        let binary = LinkedList<Int>()
        
        //binary representation..
        binary.append(1)
        binary.append(0)
        binary.append(0)
        binary.append(1)
        
        let results = binary.toBaseTen()
        print("base-10 value is:\(results)")
                
    }
    
    func testBaseTenArray() {
        
        var binary = [1, 0, 0, 1]
        
        let results = binary.toBaseTen()
        print("base-10 value is:\(results)")
        
    }
    
    
    
    func testLargestElement() {
        
        let sequence = [8, 40, 22, 16, 806]

        //find value at the 4th position
        if let result = sequence.largestElement(position: 2) {
            print("value at 2nd position: \(result)")
        }

    }
    
    func testSumRangeTotal() {
        
        //build tree model
        let bstree = BSTree<Int>()
        let low: Int = 7
        let high: Int = 15
        
        bstree.append(10)
        bstree.append(5)
        bstree.append(15)
        bstree.append(3)
        bstree.append(7)
        bstree.append(18)
        

        //evaluate total
        let result = bstree.sumRangeTotal(low, high)
        print("results total: \(result)")

        
        //evaluate series
        if let sequence = bstree.sumRangeSequence(low, high) {
            print("results sequence: \(sequence)")
        }
        
    }
    
    
    func testCommonElement() {

       // let matrix = [[1, 2, 3, 4, 5], [2, 4, 5, 8, 10], [3, 5, 7, 8, 9, 11], [1, 3, 5, 7, 8, 9]]
        let matrix = [[1, 7], [4, 7], [3, 7]]
        let result = commonElement(matrix)
        
        print(result!)
    }
    
    func testRemoveWhitespace() {
                
        //var basic = "This is a test"
        var alphabet = "The qu ick fox jum ped over the lazy d o g"
        alphabet.removeSpace2()
                
        print("The results: \(alphabet)")
    }
    
   
    func testConflictingEvents() {
        
        let eventA = Event("Baseball", dateString("09/29/2020 15:00"), dateString("09/29/2020 16:00"))
        let eventC = Event("Karate", dateString("09/29/2020 15:30"), dateString("09/29/2020 15:45"))
        
         //end times conflict
         let eventB = Event("Soccer", dateString("09/24/2020 07:30"), dateString("09/24/2020 9:15"))
         let eventE = Event("Coding", dateString("09/24/2020 09:30"), dateString("09/24/2020 11:30"))
         let eventD = Event("Tennis", dateString("09/24/2020 07:15"), dateString("09/24/2020 10:00"))
        
        
         //let eventE = Event("Evening Cookout with Friends", dateString("11/06/2018 17:00"), dateString("11/06/2018 22:00"))
        //let eventD = Event("SF Coffee Festival", dateString("11/06/2018 18:00"), dateString("11/06/2018 21:00"))
        
        
        //organize new events
        let events = EventHeap()
        
        events.enQueue(eventA)
        events.enQueue(eventC)
        
        events.enQueue(eventB)
        events.enQueue(eventE)
        events.enQueue(eventD)

        
        //print items in decending order..
        for e in events.items {
            if let title = e.title {
                print("\(title): \(e.start) - \(e.end) conflict: \(e.conflict)")
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
    
        
    
    //test fibonacci sequence with output array
    func testFibMemoized() {
        let position = 4
        
        let result = position.fibMemoized()
        print(result)
    }
    
    
    func testFibMemoizedPosition() {
        let position  = 4
        
        let result = fibMemoizedPosition(position)
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
