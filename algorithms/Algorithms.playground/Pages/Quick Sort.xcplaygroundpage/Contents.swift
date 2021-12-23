import Foundation
//Быстрая сортировка

let array = [7, 2, 3, 6, 9]//, 9, 10, 5, 6, 7]
let array2 = [1, 3, 1, 2, 1, 9, 10, 1, 2, 7]

func quickSort(_ input: [Int]) -> [Int] {
   guard input.count > 1 else { return input }
   
   let pivot = input[input.count / 2]
   let less = input.filter { $0 < pivot }
   let equals = input.filter { $0 == pivot }
   let greater = input.filter { $0 > pivot }

   return quickSort(less) + equals + quickSort(greater)
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quickSort(list)


func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
   let pivot = a[high]
   
   var i = low
   print("\(low)..<\(high)")
   
   for j in low..<high {
      if a[j] <= pivot {
         print("Массив был:  \(a)")
         a.swapAt(i, j)
         print("Массив стал: \(a)\n")
         i += 1
      }
   }
   
   a.swapAt(i, high)
   return i
}

var list2 = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8 ]
let p = partitionLomuto(&list2, low: 0, high: list.count - 1)
list2.count
