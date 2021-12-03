import UIKit

func indexInRange(at index: Int, range array: [Int]) -> Bool {
   return 0 < index && index < array.count - 1 ? true : false
}


func getCard(at index: Int, from stack: [Int]) -> Int {
   stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
   guard indexInRange(at: index, range: stack) else { return stack }
   
   var result: [Int] = stack
   result[index] = newCard
   
   return result
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
   var result: [Int] = stack
   result.append(newCard)
   
   return result
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
   guard indexInRange(at: index, range: stack) else { return stack }
   
   var result: [Int] = stack
   result.remove(at: index)
   
   return result
}

func removeTopCard(_ stack: [Int]) -> [Int] {
   guard !stack.isEmpty else { return stack }
   
   var result: [Int] = stack
   result.removeLast()
   
   return result
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
   var result: [Int] = stack
   result.insert(newCard, at: 0)
   
   return result
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
   guard !stack.isEmpty else { return stack }
   
   var result: [Int] = stack
   result.removeFirst()
   
   return result
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
   stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
   stack.filter { $0.isMultiple(of: 2) }.count
}
