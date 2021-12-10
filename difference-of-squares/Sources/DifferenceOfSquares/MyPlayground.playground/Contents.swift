import UIKit

/*Найдите разность между квадратом суммы и суммой квадратов первых N натуральных чисел.
Квадрат суммы первых десяти натуральных чисел равен (1 + 2 + ... + 10)² = 55² = 3025.
Сумма квадратов первых десяти натуральных чисел равна 1² + 2² + ... + 10² = 385.
Следовательно, разность между квадратом суммы первых десяти натуральных чисел и суммой квадратов первых десяти натуральных чисел равна 3025 - 385 = 2640.*/

struct Squares {
   let squareOfSum: Int
   let sumOfSquares: Int
   let differenceOfSquares: Int
   
   init(_ n: Int) {
      let sum = (1...n).reduce(0, +)
      squareOfSum = sum * sum
      sumOfSquares = (1...n).reduce(into: 0) { $0 += ($1 * $1) }
      differenceOfSquares = squareOfSum - sumOfSquares
   }
}


var square = Squares(100)
square.squareOfSum
square.sumOfSquares
square.differenceOfSquares
