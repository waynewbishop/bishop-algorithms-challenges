import UIKit

//generic linked list node

var numbers = Array<Int>()
numbers.append(5)
numbers.append(7)


//generic link list node
class LLNode <T> {
    var tvalue: T?
    var previous: LLNode<T>?
    var next: LLNode<T>?
}

var nodes = Array<LLNode<Int>>()
nodes.append(LLNode<Int>())



//generic types supplied at the function level

/*
class Math {
  func isEqual <E>(lhs: E, rhs: E) -> Bool {
    return lhs == rhs ? true: false
  }

  func isHigher <A>(lhs: A, rhs: A) -> A {
        return lhs > rhs ? lhs: rhs
  }
}
*/



class Math {
    func isEqual <E: Equatable>(lhs: E, rhs: E) -> Bool {
    return lhs == rhs ? true: false
  }

    func isHigher <A: Comparable>(lhs: A, rhs: A) -> A {
        return lhs > rhs ? lhs: rhs
  }
}




protocol Floatable {
    
    var hull: String? {get set}
    var engine: String? {get set}
    
    func floating() -> ()
}

extension Floatable {
    func floating(){
        print("\(type(of: self)) is now floating..")
   }
}


class Boat: Floatable {
    
    var hull: String?
    var engine: String?

}


protocol Flyable {
    
    var wings: String? {get set}
    var propeller: String? {get set}
    
    func flying() ->()
    func landing() ->()
}

extension Flyable {
    
    func flying() {
        print("\(type(of: self)) is flying..")
    }
    
    func landing() {
        print("\(type(of: self)) approaching for a landing..")
    }
}


class Plane: Flyable {
    
    var wings: String?
    var propeller: String?
}



//create a boat
var myboat = Boat()
myboat.floating()


//create a plane
var myplane = Plane()
myplane.landing()
myplane.flying()




