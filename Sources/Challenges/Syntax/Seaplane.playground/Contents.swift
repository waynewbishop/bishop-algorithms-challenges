import UIKit


protocol Floatable {
    
    var hull: String? {get set}
    var engine: String? {get set}
    
    func floating() -> ()
}

extension Floatable {
    func floating(){
       print("boat is now floating..")
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
        print("plane is flying..")
    }
    
    func landing() {
        print("plane approaching for a landing..")
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




