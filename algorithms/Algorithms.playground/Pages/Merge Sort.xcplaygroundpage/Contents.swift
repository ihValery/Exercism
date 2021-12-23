import Foundation
//Сортировка слиянием
//www.raywenderlich.com/741-swift-algorithm-club-swift-merge-sort

let array = [7, 2, 3, 6, 9]//, 9, 10, 5, 6, 7]
let array2 = [1, 3, 1, 2, 1, 9, 10, 1, 2, 7]

func mergeSort(_ input: [Int]) -> [Int] {
   guard input.count > 1 else { return input }
   
   let middleIdx = input.count / 2
   
   let leftArray = mergeSort(Array(input[..<middleIdx]))
   let rightArray = mergeSort(Array(input[middleIdx...]))
   
   return merge(leftArray, rightArray)
}

//func merge(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
//   var leftIdx = lhs.startIndex
//   var rightIdx = rhs.startIndex
//
//   var result: [Int] = []
//
//   while leftIdx < lhs.count && rightIdx < rhs.count {
//      if lhs[leftIdx] <= rhs[rightIdx] {
//         result.append(lhs[leftIdx])
//         leftIdx += 1
//      } else {
//         result.append(rhs[rightIdx])
//         rightIdx += 1
//      }
//   }
//
//   while leftIdx < lhs.count {
//      result.append(lhs[leftIdx])
//      leftIdx += 1
//   }
//
//   while rightIdx < rhs.count {
//      result.append(rhs[rightIdx])
//      rightIdx += 1
//   }
//
//   return result
//}

func merge(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
   var left = lhs
   var rigth = rhs
   
   var result: [Int] = []
   
   while !left.isEmpty && !rigth.isEmpty {
      if left.first! <= rigth.first! {
         result.append(left.removeFirst())
      } else {
         result.append(rigth.removeFirst())
      }
   }
   
   return result + left + rigth
}
mergeSort(array2)
