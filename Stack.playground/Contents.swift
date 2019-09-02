import Foundation


struct Stack<T> {
  
  fileprivate var array: [T] = []
  
  mutating func push(_ element: T) {
    array.append(element)
  }
  
  mutating func pop() -> T? {
    return array.popLast()
  }
  
  func peek() -> T? {
    return array.last
  }
  
  
}

extension Stack: CustomStringConvertible {
  var description: String {
    
    let topDivider = "____________Stack______________\n"
    let stackElements  = array.map { "\($0)"}.reversed().joined(separator: "\n")
    let bottomdiver = "\n____________________"
    
    return topDivider + stackElements + bottomdiver
  }
  
  
}
var mystack = Stack<String>()
mystack.push("MacBook-Air")
mystack.push("MacBook-Pro")
mystack.pop()
print(mystack)

var myStackInt = Stack<Int>()
myStackInt.push(1)
myStackInt.push(2)
myStackInt.pop()
print(myStackInt)


