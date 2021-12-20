import Foundation
//Пузырьковая сортировка

let array = [1, 3, 4, 2, 8, 9, 10, 5, 6, 7]
let array2 = [1, 3, 1, 2, 1, 9, 10, 1, 2, 7]


func bubbleWhile(_ input: [Int]) -> [Int] {
   var result = input
   var swaping = true
   
   while swaping {
      swaping = false
      
      for index in result.indices {
         if index == result.count - 1 { break }
         
         let lhs = result[index]
         let rhs = result[index + 1]
         
         if lhs > rhs {
            result[index] = rhs
            result[index + 1] = lhs
            swaping = true
         }
      }
   }

   return result
}

func bubbleTwoForIn(_ input: [Int]) -> [Int] {
   var result = input
   
   for i in 0..<result.count {
      let indexIteration = (result.count - 1) - i
      
      for index in 0..<indexIteration {
         let lhs = result[index]
         let rhs = result[index + 1]

         if lhs > rhs {
            result[index] = rhs
            result[index + 1] = lhs
         }
      }
   }
   
   return result
}

bubbleWhile(array2)
bubbleTwoForIn(array2)
bubbleTwoForIn(array)
