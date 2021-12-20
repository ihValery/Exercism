import Foundation
//Сортировка выбором

var array = [4, 3, 2, 1, 8, 9, 10, 5, 6, 7, 0]
var array2 = [1, 3, 1, 2, 1, 9, 10, 1, 2, 7]

func selectSort(_ input: [Int]) -> [Int] {
   var result = input
   print(result)

   for i in result.indices {
      
      var minItem = result[i]
      var minIdx = i
      
      for index in i+1..<result.count {
         
         if minItem > result[index] {
            minItem = result[index]
            minIdx = index
         }
      }
      result[minIdx] = result[i]
      result[i] = minItem
      
      print(minItem)
      print(result)
   }
   return result
}

func selectSortBeautiful(_ array: inout [Int]) {
   for i in array.indices {
      var minIdx = i
      
      for j in i+1..<array.count {
         if array[minIdx] > array[j] {
            minIdx = j
         }
      }
      
      let temp = array[i]
      array[i] = array[minIdx]
      array[minIdx] = temp
   }
}

selectSortBeautiful(&array)
