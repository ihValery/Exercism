func toLimit(_ n: Int, inMultiples: [Int]) -> Int {
   guard n > 1 else { return 0 }
   
   return (1..<n).filter { item in
      inMultiples.contains { item.isMultiple(of: $0) }
   }.reduce(0, +)
}
