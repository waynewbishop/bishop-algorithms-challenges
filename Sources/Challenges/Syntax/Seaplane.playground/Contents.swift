import Foundation


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


class Seaplane: Floatable, Flyable {
    
    var hull: String?
    var engine: String?
    
    var wings: String?
    var propeller: String?
}

let seaplane = Seaplane()

seaplane.flying()
seaplane.floating()


//create a boat
var myboat = Boat()
myboat.floating()


//create a plane
var myplane = Plane()

myplane.landing()
myplane.flying()






