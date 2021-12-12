import UIKit

let input = [1, 2, 3, 4]
let expected = [1, 4, 9, 16]

func square(_ input: Int) -> Int {
    return input * input
}

extension Collection {
   func accumulate<T>(_ function: (Element) -> T) -> [T] {
      var result: [T] = []
      for item in self {
         result.append(function(item))
      }
      return result
   }
}
