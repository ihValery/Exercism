struct Squares {
   let squareOfSum: Int
   let sumOfSquares: Int
   let differenceOfSquares: Int
   
   init(_ n: Int) {
      //let sum = (1...n).reduce(0, +)
      //1+2+3+...n=n(n+1)÷2 доказывается матиндукцией
      let sum = n * (n + 1) / 2
      squareOfSum = sum * sum
      //sumOfSquares = (1...n).reduce(into: 0) { $0 += ($1 * $1) }
      //1^2+2^2+...+n^2=n(n+1)(2n+1)/6 доказывается матиндукцией
      sumOfSquares = n * (n + 1) * (2 * n + 1) / 6
      differenceOfSquares = squareOfSum - sumOfSquares
   }
}
