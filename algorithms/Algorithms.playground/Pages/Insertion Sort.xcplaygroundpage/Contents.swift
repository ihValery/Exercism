import Foundation
//Сортировка вставками

let array = [4, 3, 2, 1]//, 8, 9, 10, 5, 6, 7]
let array2 = [1, 3, 1, 2, 1, 9, 10, 1, 2, 7]

func insertionSort(_ input: [Int]) -> [Int] {
   var result = input
   
   for index in result.indices {
      var j = index - 1
      let currentItem = result[index]
      print("Текущий элемент: \(currentItem)  по индексу: \(index)")
      print("Был \(result)")
      
      while j >= 0 && result[j] > currentItem {
         print("(j:\(j)) >= 0 && \(result[j]) > \(currentItem) значит меняем")
         result[j + 1] = result[j]
         print("Стал \(result)")
         j -= 1
      }
      
      print("В массив[\(j + 1)] ставим \(currentItem)")
      result[j + 1] = currentItem
      print("Стал \(result)\n")
   }
   return result
}

insertionSort(array)
