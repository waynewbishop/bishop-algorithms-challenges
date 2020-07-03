/*:
 
 # Challenges
 */

import Challenges

/*
import SwiftUI
import PlaygroundSupport

let test = "Wayne"

struct ProgressView: View {
    
    var body: some View {
        Text(test)
    }
    
}

PlaygroundPage.current.setLiveView(ProgressView())
*/


    let item = LLNode<Int>()
    let list = LinkedList<Int>()

    //append linked list items.
    list.append(8)
    list.append(10)
    list.append(2)
    list.append(5)
    list.append(9)

    let bstree = BSTree<Int>()
    let node = Node<Int>()
    let queue = Queue<Int>()
    let simpleStack = SimpleStack<Int>()
    let stack = Stack<Int>()
    let bsnode = BSNode<Int>()
    let priority = Priority<Int>()


typealias AEClassifierResult = String

import CoreML


class Classifier {
    
    /*
    note: AEClassifier is a model trained with csv data built on MacOS.
    to review and experiment with this dataset access the specific MacOS
    playground file.
    */
    
    /*
    func loadModel() ->MLModel? {
      
        do {
                let config = MLModelConfiguration()
                config.computeUnits = .all

             return  try AEClassifier(configuration: config)
            }
            
            
                return try AEClassifier(configuration: config)
              } catch {
                print("Error loading model: \(error)")
                return nil
              }
    }
    */
    
    /*
    func AEPredict(using statement: String) -> AEClassifierResult? {

        let config = MLModelConfiguration()
        config.computeUnits = .all

    
        guard let prediction = try? model.prediction(text: statement) else {
            fatalError("Unexpected runtime error.")
        }
        
        //return predicted value - String
        return prediction.label

        }
     */
        
    }
















