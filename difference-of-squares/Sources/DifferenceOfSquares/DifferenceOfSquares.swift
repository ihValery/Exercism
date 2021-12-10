struct Squares {
   var squareOfSum: Int
   var sumOfSquares: Int
   var differenceOfSquares: Int

   
   init(_ count: Int) {
      let sum = (1...count).reduce(0, +)
      squareOfSum = sum * sum
      sumOfSquares = (1...count).reduce(into: 0) { $0 += ($1 * $1) }
      differenceOfSquares = squareOfSum - sumOfSquares
   }
}
