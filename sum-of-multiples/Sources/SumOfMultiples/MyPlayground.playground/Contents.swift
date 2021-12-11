import UIKit

//struct SumOfMultiples {
//   static func toLimit(_ n: Int, inMultiples: [Int]) -> Int {
//      guard n > 1 else { return 0 }
//
//      var newSequence: Int = 0
//      for item in 1..<n {
//         for index in inMultiples {
//            if item.isMultiple(of: index) {
//               newSequence += item
//               break
//            }
//         }
//      }
//      return newSequence
//   }
//}

//func toLimit(_ n: Int, inMultiples: [Int]) -> Int {
//   guard n > 1 else { return 0 }
//
//   return (1..<n).filter { item in
//
//      for index in inMultiples {
//         if item.isMultiple(of: index) {
//            return true
//         }
//      }
//      return false
//
//   }.reduce(0, +)
//}

func toLimit(_ n: Int, inMultiples: [Int]) -> Int {
   guard n > 1 else { return 0 }
   
   return (1..<n).filter { item in
      inMultiples.contains { item.isMultiple(of: $0) }
   }.reduce(0, +)
}


var result = toLimit(11, inMultiples: [0, 5])
//2318

let trueOrFalse = [3, 5].allSatisfy { 15.isMultiple(of: $0) }
trueOrFalse  //true
