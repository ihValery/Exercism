//
//  ContentView.swift
//  MergSort
//
//  Created by Валерий Игнатьев on 22.12.2021.
//

import SwiftUI

struct ContentView: View {
   private var array: [Int] = [8, 1, 1, 1, 6, 5, 7, 1, 2, 4, 3]
//   private var array: [Int] = [5, 4, 3, 1, 2]
   
   var body: some View {
      VStack(alignment: .leading, spacing: 20) {
         Text("Merge sort")
            .foregroundColor(.gray)
         Text("Ручная сортировка слиянием")
            .foregroundColor(.gray)
         
         Text("")
         Text("Исходный массив: \(array.count)")
         Text(arrayToStr(array))
            .padding()
            .background(
               RoundedRectangle(cornerRadius: 25)
                  .strokeBorder(.yellow.opacity(0.7), lineWidth: 2)
            )
         
         Text("Отсортированный массив: \(mergeSort(array).count)")
         Text(arrayToStr( mergeSort(array) ))
            .padding()
            .background(
               RoundedRectangle(cornerRadius: 25)
                  .strokeBorder(.yellow.opacity(0.7), lineWidth: 2)
            )
      }
      .font(.title)
   }
   
   private func arrayToStr(_ array: [Int]) -> String {
      array.reduce(into: "") { result, item in
         result += item == array.last ? "\(item)" : "\(item),  "
      }
   }
  
   /*
   private func mergeSort(_ input: [Int]) -> [Int] {
      guard input.count > 1 else { return input }

      let mid = input.count / 2

      let left = mergeSort(Array( input[..<mid] ))
      let right = mergeSort(Array( input[mid...] ))

      return merge(left, right)
   }

   private func merge(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
      var leftIdx = 0
      var rightIdx = 0

      var result: [Int] = []

      while leftIdx < lhs.count && rightIdx < rhs.count {
         if lhs[leftIdx] <= rhs[rightIdx] {
            result.append(lhs[leftIdx])
            leftIdx += 1
         } else {
            result.append(rhs[rightIdx])
            rightIdx += 1
         }
      }

      while leftIdx < lhs.count {
         result.append(lhs[leftIdx])
         leftIdx += 1
      }

      while rightIdx < rhs.count {
         result.append(rhs[rightIdx])
         rightIdx += 1
      }

      return result
   }
    */
  
   private func mergeSort(_ input: [Int]) -> [Int] {
      guard input.count > 1 else { return input }
      
      let mid = input.count / 2
      
      let left = mergeSort(Array( input[..<mid] ))
      let right = mergeSort(Array( input[mid...] ))
      
      return merge(left, right)
   }
   
   private func merge(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
      var left = lhs
      var right = rhs
      
      var result: [Int] = []
      
      while !left.isEmpty && !right.isEmpty {
         if left.first! <= right.first! {
            result.append(left.removeFirst())
         } else {
            result.append(right.removeFirst())
         }
      }
      
      return result + left + right
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
