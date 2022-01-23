import Foundation


//MARK: Variables & Constants

//basic constant with print statement
let constantText = "Hello World"
print(constantText)


//constant assignment with specific declared type
let constantTextWithType: String = "Hello another World"
print(constantTextWithType)

//attempt to change value
//constantText = "Greetings!"


var variableText = "Hello again!"
print(variableText)

//mutate the existing variable
variableText = "Nice to meet you!"
print(variableText)

//having direct control over mutating objects
//is especially important when it comes to working with numbers
let a = 25
//a = 35 //not permitted
//a += 10 //not permitted
print("results of a is: \(a)")


var b = 25
b += 10 //works as expected
print("results of b is: \(b)")


//MARK: Swift Array's


var sequence = [1, 2, 3, 4, 5]

//add items
sequence.append(6)
sequence.insert(7, at: 6)

//update via subscript
sequence[3] = 12


//similar to strings, arrays can be initialized to specific type, or
//have the type be interpreted based on the initialized content.
var sequenceWithType: Array<Int> = [1, 2, 3, 4, 5]


//retrieve items - via method or subscript
let one: Int = 1
let sequenceValue = sequence[one]
print("value at index \(one) is \(sequenceValue)..")


//replace a value a specific index
sequence[2] = 10
print("value at index 2 is \(sequence[2])")


//MARK: Swift Dictionaries

//create dictionary content (key, value pairs)
var dictionary: [Int : String] = [:]

//insert items
dictionary[200] = "Ok.."
dictionary[404] = "Resource not found.."
print(dictionary)


//next section!!

//MARK: Looping and iterative functions

//iterates through entire sequence
for item in sequence {
    print("the item is \(item)..")
}

//enumerate with built-in index
for (index, value) in sequence.enumerated() {
    print("item \(value) is at index \(index)..")
}


//dictionary iteration
for (key, value) in dictionary {
    print("key: \(key), value: \(value)..")
}

//just obtain keys
for k in dictionary.keys {
    print("key: \(k)")
}


//there are also while loops, as well as repeat and stride functions as well

//MARK: Optionals

let c: String = "cats" //non-optional
let d: String? = "dogs" //optional
print(c)
print(d)

//unwrap to use value
if let dog = d {
    print(dog) //unwrapped value
}

//return types from methods can also be declared as optional..
if let first = sequence.first {
    print("first item is: \(first)")
}

//implicity unwrapped optional
var add: Int! = 2
add += 4 //value can be mutated without safe unwrap..


//var nothing: String = nil //does not compile - does not accept a nil value
var nothing: String? = nil //works as expected..



//function, no parameters
func operation() {
    print("operation is now working!")
}

operation()


//function with parameters
func operation(lhs: Int, rhs: Int) -> Int {
    let result = lhs + rhs
    return result
}

operation(lhs: 2, rhs: 3)


//function, named parameters
func operationWithNames(left lhs: Int, right rhs: Int) -> Int {
    return lhs + rhs
}

operationWithNames(left: 2, right: 3)


//function with defaults
func operationWithDefaults(lhs: Int = 2, rhs: Int = 3) -> Int {
    return lhs + rhs
}

//use the defaults
operationWithDefaults()

//use specific values
operationWithDefaults(lhs: 5, rhs: 6)


//MARK: Functions

//subtract - return only positive numbers
func subtract(lhs: Int, rhs: Int) -> Int {
    
    //guarding against a specific condition - early exit
    guard lhs > rhs else {
        return -1
    }
    
    return lhs - rhs
}


//doesn't return a positive number
subtract(lhs: 2, rhs: 10)


//returns a positive number
subtract(lhs: 10, rhs: 2)


//leave this section for a part two: advanced topics


/*
//functions in Swift can be elevated to work as parameters
func operation(formula: (Int, Int) -> Int) -> Int {
    return formula(6, 4)
}


operation { (lhs: Int, rhs: Int) in
    lhs + rhs
}

operation { (lhs: Int, rhs: Int) in
    lhs * rhs
}
*/


//MARK: class and struct objects

class Sailboat {

   private var hull: String?
   private var engine: String?
    
    //default initalization
    init(hull: String, engine: String) {
        self.hull = hull
        self.engine = engine
    }

     func floating() {
         if let engine = self.engine { //unwrap property optional..
             print("now floating with a \(engine) engine..")
         }
    }
}


//new boat instance
var sailboat = Sailboat(hull: "Mercury 100", engine: "fiberglass")
sailboat.floating()



protocol Shippable {
    var description: String {get set}
    var height: Int {get set}
    var width: Int {get set}
    var weight: Float {get set}
    var area: Int {get set}
}


extension Shippable {
   var area: Int {  //computed property now available for all conforming types
        return height * width
     }
}


class Boat <T: Shippable> { //type contraint
    var cargo = Array<T>()
}


//or could be implemented as a protocol
class ShipBoat {
    var cargo = Array<Shippable>() //note how the protocol is now elevated to work as type
    
    func append(item: Shippable) {
        self.cargo.append(item)
    }
}



//set a weight restriction on the plane to limit
//makes use of computed property
class Plane <T: Shippable> {
    
  var cargo = Array<T>()
    
    func append (item: T) -> Bool {
        /*
         note how the cargo requirements can be refined without changing
         how the default protocol operates.
         */
        guard item.area > 500 else {
            return false
        }
        
        cargo.append(item)
        return true
    }
    
}
